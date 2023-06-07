class PopperArray {
    constructor(array) {
      this.array = array;
      this.counter = 0;
    }
  
    popper() {
      if (this.counter % 2 === 0) {
        this.counter += 1;
        return this.array.shift()
      } else if (this.counter % 2 !== 0) {
        this.counter += 1;
        return this.array.pop()
      }
    }
  }
  
  const popeando = new PopperArray([4, 8, 33, 2, 9]);
  
  popeando.popper();
  popeando.popper();
  popeando.popper();
  popeando.popper();
  popeando.popper();

  /*Solución Jordan:

  class ArrayPopper {
  constructor(arr) {
    this.arr = arr;
    this.atBeginning = true;
  }

  togglePopper() {
    this.atBeginning = !this.atBeginning;
    return this.atBeginning ? this.arr.pop() : this.arr.shift();
  }
}

const ap = new ArrayPopper([1, 2, 3, 4, 5]);

ap.togglePopper(); //?
ap.togglePopper(); //?
ap.togglePopper(); //?
ap.togglePopper(); //?
ap.togglePopper(); //?
ap.togglePopper(); //?
*/