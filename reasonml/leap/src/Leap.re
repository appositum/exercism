let isDiv = (x, y) => x mod y == 0;
let isLeapYear = year =>
  isDiv(year, 4) && !(isDiv(year, 100))
  || isDiv(year, 100) && isDiv(year, 400);
