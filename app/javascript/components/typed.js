import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('#banner-typed-text');
  if (element) {
    new Typed('#banner-typed-text', {
      strings: ["Get 20% off your next treatment!", "Use code: ILOVETOCODE"],
      typeSpeed: 15,
      loop: true,
      loopCount: Infinity,
      showCursor: false,
      startDelay: 3,
    });
  }
};

export { initTyped };


