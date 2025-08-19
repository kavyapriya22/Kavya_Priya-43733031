document.addEventListener("DOMContentLoaded", () => {
  const box = document.getElementById("box");
  const marginSlider = document.getElementById("margin");
  const borderSlider = document.getElementById("border");
  const paddingSlider = document.getElementById("padding");

  const marginValue = document.getElementById("marginValue");
  const borderValue = document.getElementById("borderValue");
  const paddingValue = document.getElementById("paddingValue");

  marginSlider.addEventListener("input", () => {
    box.style.margin = marginSlider.value + "px";
    marginValue.textContent = marginSlider.value + "px";
  });

  borderSlider.addEventListener("input", () => {
   box.style.border = borderSlider.value + "px solid orange";
    borderValue.textContent = borderSlider.value + "px";
  });

  paddingSlider.addEventListener("input", () => {
    box.style.padding = paddingSlider.value + "px";
    paddingValue.textContent = paddingSlider.value + "px";
  });
});

