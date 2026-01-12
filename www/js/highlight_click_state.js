(function () {
  function markClicked(el) {
    if (!el) return;
    el.classList.add("is-clicked");
  }

  function findHighlightAnchor(target) {
    if (!target) return null;
    return target.closest('a.action-button[class*="highlight_"], a.shiny-bound-input.action-button[class*="highlight_"]');
  }

  document.addEventListener("click", function (e) {
    var a = findHighlightAnchor(e.target);
    if (!a) return;
    markClicked(a);
  });

  document.addEventListener("keydown", function (e) {
    if (e.key !== "Enter" && e.key !== " ") return;
    var a = findHighlightAnchor(e.target);
    if (!a) return;
    markClicked(a);
  });
})();
