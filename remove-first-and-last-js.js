function removeFirstAndLast(array) {
	return (array = array.slice(1, -1));
}

var arrayOne = [2, 4, 6, 6, 9];

console.log(removeFirstAndLast(arrayOne));

//Solución Jordan
const removeFirstAndLast = (arr) => {
	if (arr.length >= 3) {
		return arr.slice(1, -1);
	} else {
		throw "You need at least three elements in the array";
	}
};

removeFirstAndLast([1, 2, 3, 4]); //?
removeFirstAndLast(["<h1>", "Some content", "</h1>"]); //?
removeFirstAndLast(["Some content", "</h1>"]); //?
