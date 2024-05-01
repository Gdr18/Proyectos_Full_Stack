/* Entendí mal el ejercicio.

const manualExponent = (number, exponent) => {
  return [number, exponent].reduce((a, b) => a ** b)
}

console.log(manualExponent(5, 2));
*/

//Solución Jordan
const toThePowerOf = (num, exp) => {
    const items = Array(exp).fill(num);
    return items.reduce((accumulator, currentValue) => accumulator * currentValue);
  };
  
  console.log(toThePowerOf(2, 3)); //?
  toThePowerOf(3, 3); //?
  toThePowerOf(4, 2); //?
  toThePowerOf(10, 10); //?
  10 ** 10; //?