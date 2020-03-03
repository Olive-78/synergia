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


        // <p style="color: #000000 !important;"> Engaging countdown </p>
        // <p style="color: #000000 !important;"> Engines one </p>
        // <p style="color: #000000 !important;"> And it's a match! </p>
