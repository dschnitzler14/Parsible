(function () {
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
    if (!root.querySelectorAll) return;

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
    var box = closest(toolbar, ".paper-box") || toolbar.parentElement;
    if (box) {
      var local = box.querySelector(sel);
      if (local) return local;
    }
    return document.querySelector(sel);
  }

  function findSelectedProse(range) {
    var el = range.commonAncestorContainer;
    if (el.nodeType === 3) el = el.parentElement;
    return closest(el, ".prose");
  }

  var state = {
    mode: "highlight",
    colorClass: "hl-yellow",
    activeTarget: null
  };

  function setActive(toolbar, mode, colorClass) {
    if (mode) state.mode = mode;
    if (colorClass) state.colorClass = colorClass;

    state.activeTarget = resolveTarget(toolbar);

    var modeText = state.mode === "erase" ? "Erase mode" : "Highlight mode";
    var colorText =
      state.mode === "erase"
        ? ""
        : " • " + state.colorClass.replace("hl-", "").toUpperCase();

    setStatus(toolbar, modeText + colorText);
  }

  document.addEventListener("click", function (e) {
    var btn = closest(e.target, "[data-hl-action]");
    if (!btn) return;

    var toolbar = closest(btn, ".hl-toolbar");
    if (!toolbar) return;

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
      setActive(toolbar, state.mode, state.colorClass);
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

    state.activeTarget = selectedProse;

    if (state.mode === "erase") {
      removeHighlightsInRange(range);
      sel.removeAllRanges();
      return;
    }

    var ok = applyHighlight(range, state.colorClass);
    if (!ok) safeHighlight(range, state.colorClass);

    sel.removeAllRanges();
  });
})();
