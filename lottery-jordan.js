const weightedLottery = weights => {
    // keep track of your  weights
    // ['green', 'yellow', 'yellow', 'red', 'red', 'red']
    let containerArray = [];

    Object.keys(weights).forEach(key =>{
        for (let i = 0; i < weights[key]; i++) {
            containerArray.push(key);
        }
    })

    return containerArray[(Math.random() * containerArray.length) | 0];
}

const weights = {
    winning: 1,
    losing: 1000
}

weightedLottery(weights)