var array = [1, 2, 3];
result = (Number(array.slice(0, 1)) + Number(array.slice(1, 2)) + Number(array.slice(-1))) / array.length

console.log(result);

//Solución Jordan
const getAverage = arr => {
    const reducer = (total, currentValue) => total + currentValue;
    const total = arr.reduce(reducer);
    return total / arr.length;
  };
  
  const arr = [1, 2, 3, 4, 5, 6];
  
  getAverage(arr);