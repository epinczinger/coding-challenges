const howSum = (targetSum, numbers) => {
    const table = Array(targetSum + 1).fill(null);
    table[0] = [];

    for (let i = 0; i<= targetSum; i++) {
        if (table[i] !== null) {
            for (let number of numbers) {
                table[i + number] = [...table[i], number]
            }
        }
    }
    return table[targetSum];
}

console.log(howSum(12, [35,5,7,4]));