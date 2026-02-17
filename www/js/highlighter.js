(function () {
  var ENABLED_BOX_SELECTOR = ".paper-box-hl";

  function closest(el, sel) {
    while (el && el.nodeType === 1) {
      if (el.matches(sel)) return el;
      el = el.parentElement;
    }
    return null;
  }

  function unwrap(node) {
    if (!node || !node.parentNode) return;
    while (node.firstChild) node.parentNode.insertBefore(node.firstChild, node);
    node.parentNode.removeChild(node);
  }

  function applyHighlight(range, cls) {
    var span = document.createElement("span");
    span.className = "hl " + cls;
    try {
      range.surroundContents(span);
      return true;
    } catch (e) {
      return false;
    }
  }

  function safeHighlight(range, cls) {
    var frag = range.extractContents();
    var span = document.createElement("span");
    span.className = "hl " + cls;
    span.appendChild(frag);
    range.insertNode(span);
    return true;
  }

  function removeHighlightsInRange(range) {
    var root = range.commonAncestorContainer;
    if (root.nodeType === 3) root = root.parentElement;
    if (!root || !root.querySelectorAll) return;

    var highlights = root.querySelectorAll(".hl");
    for (var i = 0; i < highlights.length; i++) {
      var h = highlights[i];
      try {
        if (range.intersectsNode(h)) unwrap(h);
      } catch (e) {}
    }
  }

  function clearAll(targetEl) {
    var hs = targetEl.querySelectorAll(".hl");
    hs.forEach(function (h) {
      unwrap(h);
    });
  }

  function setStatus(toolbar, text) {
    var el = toolbar.querySelector(".hl-status");
    if (el) el.textContent = text;
  }

  function resolveTarget(toolbar) {
    var sel = toolbar.getAttribute("data-hl-target") || ".prose";
    var box = closest(toolbar, ENABLED_BOX_SELECTOR);
    if (!box) return null;
    var local = box.querySelector(sel);
    return local || null;
  }

  function findSelectedProse(range) {
    var el = range.commonAncestorContainer;
    if (el.nodeType === 3) el = el.parentElement;
    if (!el) return null;

    var prose = closest(el, ".prose");
    if (!prose) return null;

    var enabledBox = closest(prose, ENABLED_BOX_SELECTOR);
    if (!enabledBox) return null;

    return prose;
  }

  var toolbarState = new WeakMap();

  function getToolbarState(toolbar) {
    var s = toolbarState.get(toolbar);
    if (!s) {
      s = { mode: "highlight", colorClass: "hl-yellow" };
      toolbarState.set(toolbar, s);
    }
    return s;
  }

  function setActive(toolbar, mode, colorClass) {
    var s = getToolbarState(toolbar);

    if (mode) s.mode = mode;
    if (colorClass) s.colorClass = colorClass;

    var modeText = s.mode === "erase" ? "Erase mode" : "Highlight mode";
    var colorText = s.mode === "erase" ? "" : " • " + s.colorClass.replace("hl-", "").toUpperCase();
    setStatus(toolbar, modeText + colorText);
  }

  document.addEventListener("click", function (e) {
    var btn = closest(e.target, "[data-hl-action]");
    if (!btn) return;

    var toolbar = closest(btn, ".hl-toolbar");
    if (!toolbar) return;

    var box = closest(toolbar, ENABLED_BOX_SELECTOR);
    if (!box) return;

    var action = btn.getAttribute("data-hl-action");

    if (action === "color") {
      var cls = btn.getAttribute("data-hl-class");
      setActive(toolbar, "highlight", cls);
      return;
    }

    if (action === "erase") {
      setActive(toolbar, "erase", null);
      return;
    }

    if (action === "clear") {
      var targetEl = resolveTarget(toolbar);
      if (targetEl) clearAll(targetEl);
      var s = getToolbarState(toolbar);
      setActive(toolbar, s.mode, s.colorClass);
      return;
    }
  });

  document.addEventListener("mouseup", function () {
    var sel = window.getSelection();
    if (!sel || sel.rangeCount === 0) return;

    var range = sel.getRangeAt(0);
    if (range.collapsed) return;

    var selectedProse = findSelectedProse(range);
    if (!selectedProse) return;

    var enabledBox = closest(selectedProse, ENABLED_BOX_SELECTOR);
    if (!enabledBox) return;

    var toolbar = enabledBox.querySelector(".hl-toolbar");
    if (!toolbar) return;

    var s = getToolbarState(toolbar);

    if (s.mode === "erase") {
      removeHighlightsInRange(range);
      sel.removeAllRanges();
      return;
    }

    var ok = applyHighlight(range, s.colorClass);
    if (!ok) safeHighlight(range, s.colorClass);

    sel.removeAllRanges();
  });
})();