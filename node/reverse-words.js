// Input:  "you must unlearn what you have learned"
// Output: "learned have you what unlearn must you"

function reverseWords(sentence) {
  let words = sentence.split(' ');

  let left = 0;
  let right = words.length - 1;

  while (left < right) {
    let temp = words[left];
    words[left] = words[right];
    words[right] = temp;
    ++left;
    --right;
  }

  return words.join(' ');
}

module.exports = reverseWords;
