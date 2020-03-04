import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#loader-text', {
    strings: ["Vérification des disponibilités...", "Calcul du point de rencontre...", "Génération du RDV optimal..."],
    typeSpeed: 30,
    loop: false,
    showCursor: false
  });
};
export { loadDynamicBannerText };
