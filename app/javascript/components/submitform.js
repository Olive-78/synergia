const submit = () => {
  const choices = document.querySelectorAll('.choice');
  const dechoice = document.querySelectorAll('.touch-choice');
  // choices.forEach((choice) => {
  //   choice.addEventListener("click", (event) => {
  //     const form1 = choice.parentNode;
  //     const btn = form1.querySelector("input[type=submit]");
  //     btn.click();
  //   });
  // });
  dechoice.forEach((dechoice) => {
    dechoice.addEventListener("click", (event) => {
      const form2 = dechoice.parentNode;
      const btn = form2.querySelector("input[type=submit]");
      btn.click();
    });
  });
};

export { submit };
