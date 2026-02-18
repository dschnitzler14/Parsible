(function () {
  Shiny.addCustomMessageHandler("scrollToAnchor", function (message) {
    if (!message || !message.id) return;

    var el = document.getElementById(message.id);
    if (!el) return;

    el.scrollIntoView({
      behavior: "smooth",
      block: "start"
    });
  });
})();
