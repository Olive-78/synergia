import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#loader-text', {
    strings: ["Engaging countdown", "Bored of Coworking coffees ?"],
    typeSpeed: 50,
    loop: true,
    showCursor: false
  });
};
export { loadDynamicBannerText };
