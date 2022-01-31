export const breakpoints = [640, 1024, 1440];

export default {
  gridSize: "100%",
  rowSize: "1180px",
  pageGap: "27px",
  breakpoints: breakpoints.map((i) => i + "px"),
  fontSizes: [12, 14, 16, 20, 24, 32, 48, 64],
  colors: {
    blue: "#1b4181",
    red: "#cc0000",
    redLight: "#db4d4d",
    orange: "#ff6e00",
    yellow: "#ffcc00",
    yellowLight: "#FFE066",
    black: "#000000",
    blackLight: "#333333",
    white: "#ffffff",
    gray: "#A6A6A6",
    grayLight: "#c8c8c8",
    green: "#32ab27",
    dimmed: "#333333",
    grayDark: "#858585",
    lightBlack: "#020202",
  },
  allowedColors: ["green", "red", "blue", "yellow"],
  sizes: {
    navbar: {
      height: 87,
    },
  },
  space: [0, 4, 8, 16, 32, 64, 128, 256],
  transition: {
    basic: ".2s all cubic-bezier(.5,.36,.67,.8)",
  },
  fonts: {
    heading: '"HelveticaNowDisplay-Blk", sans-serif',
    body: '"Helvetica Now Display", sans-serif',
    bold: '"Helvetica Now Display", sans-serif',
    textRegular: '"HelveticaNowTextRegular", sans-serif',
    textBold: '"Helvetica Now Text", sans-serif',
    light: '"HelveticaNowDisplayLight", sans-serif',
  },
};
