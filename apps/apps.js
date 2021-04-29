'use strict';

angular.module('nwas').service('apps', function() {
  return [
    { name: "raycast", description: {en: "3d sage raycast port", fr: "3d sage raycast port"} },
    { name: "BadApple", description: {en: "bad apple", fr: "bad apple"} },
    { name: "KhiCAS", description: {en: "Computer algebra system", fr: "Système de calcul formel"} },
    { name: "Periodic", description: {en: "Periodic table of elements", fr: "Tableau périodique des éléments"} },
    { name: "Nofrendo", description: {en: "NES emulator", fr: "Émulateur NES"} },
    { name: "Peanut-GB", description: {en: "GameBoy emulator", fr: "Émulateur GameBoy"} },
    { name: "HexEdit", description: {en: "Hexadecimal editor", fr: "Éditeur hexadécimal"} },
    { name: "calcboy", description: {en: "gbc", fr: "gbc"} },
  ];
});
