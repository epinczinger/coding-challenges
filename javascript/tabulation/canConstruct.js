const canConstruct = (targetString, wordBank) => {
    const table = Array(targetString + 1).fill(false);
    table[0] = true;

    for (let i=0; i <= targetString.length; i++) {
        if (table[i] === true) {
            for (let word of wordBank) {
                if (targetString.slice(i, i+word.length) === word) {
                    table[i+word.length] = true;
                }
            }
        }
    }
   return table[targetString.length];
};

console.log(canConstruct('abcdefg', ['ab', 'bc', 'd', 'abcd', 'ef', 'g']))

