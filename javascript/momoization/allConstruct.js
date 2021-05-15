const allConstruct = (target, wordBank, memo = {}) => {
    if (target in memo) return memo[target];
    if (target === '') return [[]];

    const result = [];
    
    for (let word of wordBank) {
        if (target.indexOf(word) === 0) {
            const suffix = target.slice(word.length);
            const suffixWays = allConstruct(suffix, wordBank, memo);
            console.log(suffixWays)
            const targetWays = suffixWays.map(way => [word, ...way]);
            result.push(...targetWays)
        }
    }

    memo[target] = result;
    return result;
};

// memo here doesnt improve the worst case
// time O(n^m)
// space O(m) height of recursion tree

console.log(allConstruct('skateboard', ['sk', 'ateboard', 'skate', 'board', 'asdd']))