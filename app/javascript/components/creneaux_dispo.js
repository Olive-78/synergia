const ChangeFormatChoice = () => {
  const choices = document.querySelectorAll(".selected");
  choices.forEach((choice) => {
    choice.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle('touch-choice');
      event.currentTarget.classList.toggle('choice');
      if (event.currentTarget.querySelector("input[type=checkbox]").checked == true) {
        event.currentTarget.querySelector("input[type=checkbox]").checked = false;
      } else {
        event.currentTarget.querySelector("input[type=checkbox]").checked = true;
      };
      const form1 = choice.parentNode;
      const btn = form1.querySelector("input[type=submit]");
      btn.click();
    });
  });
};

export { ChangeFormatChoice };
