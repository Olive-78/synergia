import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#loader-text', {
    strings: ["Vérification des disponibilités...", "Calcul du point de rencontre...", "Génération du match parfait..."],
    typeSpeed: 35,
    loop: true,
    showCursor: false
  });
};
export { loadDynamicBannerText };
