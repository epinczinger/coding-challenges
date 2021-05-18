const bestSum = (targetSum, numbers) => {
  const table = Array(targetSum + 1).fill(null);
  table[0] = [];

  for (let i = 0; i <= targetSum; i++) {
    if (table[i] !== null) {
      for (let numb of numbers) {
        const combination = [...table[i], numb];
        if (!table[i+numb] || combination.length < table[i + numb].length) {
          table[i + numb] = combination;
        }
      }
    }
  }
  return table[targetSum];
};

console.log(bestSum(12, [3, 4, 5, 6]));
