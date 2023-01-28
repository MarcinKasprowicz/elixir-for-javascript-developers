// Input: ['$ cd /', '$ ls', 'dir a', '14848514 b.txt', '8504156 c.dat']

// Output:
// Go to "/" directory.
// List directory contents.
//   Directory "a".
//   File "b.txt" with a size of 14848514.
//   File "c.dat" with a size of 8504156.
// I have finished my job.

function readCommands(lines) {
  for (const line of lines) {
    const words = line.split(' ');

    if (words[0] == '$' && words[1] == 'cd') {
      console.log(`Go to "${words[2]}" directory.`);
    } else if (words[0] == '$' && words[1] == 'ls') {
      console.log('List directory contents.');
    } else if (words[0] == 'dir') {
      console.log(`  Directory "${words[1]}".`);
    } else if (words.length == 2) {
      console.log(`  File "${words[1]}" with a size of ${words[0]}.`);
    } else {
      throw new Error(`Couldn't parse ${words}!`);
    }
  }

  console.log('I have finished my job.');
}

module.exports = readCommands;
