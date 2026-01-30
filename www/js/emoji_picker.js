
(function () {
  function closest(el, sel) {
    while (el && el.nodeType === 1) {
      if (el.matches(sel)) return el;
      el = el.parentElement;
    }
    return null;
  }

  function insertAtCursor(textarea, text) {
    var start = textarea.selectionStart || 0;
    var end = textarea.selectionEnd || 0;
    var value = textarea.value || "";

    textarea.value = value.slice(0, start) + text + value.slice(end);

    var pos = start + text.length;
    textarea.selectionStart = pos;
    textarea.selectionEnd = pos;

    textarea.focus();
    textarea.dispatchEvent(new Event("input", { bubbles: true }));
    textarea.dispatchEvent(new Event("change", { bubbles: true }));
  }

  function ensureNewLine(textarea) {
    var pos = textarea.selectionStart || 0;
    if (pos === 0) return "";
    var v = textarea.value || "";
    return v.slice(pos - 1, pos) === "\n" ? "" : "\n";
  }

  function buildPicker(picker) {
    if (!picker || picker.dataset.initialized === "true") return;

    var emojis = (picker.dataset.emojis || "")
      .split(",")
      .map(function (e) {
        return e.trim();
      })
      .filter(Boolean);

    if (emojis.length === 0) return;

    picker.dataset.initialized = "true";
    picker.innerHTML = "";

    emojis.forEach(function (emoji) {
      var btn = document.createElement("button");
      btn.type = "button";
      btn.className = "sb-emoji-btn";
      btn.textContent = emoji;
      btn.dataset.emoji = emoji;
      picker.appendChild(btn);
    });
  }

  function buildAll(root) {
    var scope = root || document;
    var pickers = scope.querySelectorAll
      ? scope.querySelectorAll(".sb-emoji-picker")
      : [];
    for (var i = 0; i < pickers.length; i++) buildPicker(pickers[i]);
  }

  buildAll(document);

  var obs = new MutationObserver(function (mutations) {
    for (var i = 0; i < mutations.length; i++) {
      var m = mutations[i];
      for (var j = 0; j < m.addedNodes.length; j++) {
        var node = m.addedNodes[j];
        if (!node || node.nodeType !== 1) continue;
        if (node.matches && node.matches(".sb-emoji-picker")) buildPicker(node);
        buildAll(node);
      }
    }
  });

  obs.observe(document.documentElement, { childList: true, subtree: true });

  document.addEventListener("click", function (e) {
    var btn = closest(e.target, ".sb-emoji-btn");
    if (!btn) return;

    var notepad = closest(btn, ".sb-notepad");
    if (!notepad) return;

    var textarea = notepad.querySelector("textarea");
    if (!textarea) return;

    var emoji = btn.dataset.emoji;
    if (!emoji) return;

    insertAtCursor(textarea, ensureNewLine(textarea) + "• " + emoji + " ");
  });
})();
