const prettyPrice = (total, extension) => {
    return extension === parseInt(extension) ? Math.floor(total) + extension * 0.01 : Math.floor(total) + extension
}


console.log(prettyPrice(3.45, 95));