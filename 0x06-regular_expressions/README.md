# Project: 0x06. Regular expression

## Task Descriptions

1. **0-simply_match_school.rb**
   - Requirements: The regular expression must match "School."
   - Example:
     ```bash
     sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
     School$
     ```

2. **1-repetition_token_0.rb**
   - Requirements: Find the regular expression that matches specified cases.
   - Example:
     ```bash
     sylvain@ubuntu$ ./1-repetition_token_0.rb "holberton" | cat -e
     holberton$
     ```

3. **2-repetition_token_1.rb**
   - Requirements: Find the regular expression that matches specified cases.
   - Example:
     ```bash
     sylvain@ubuntu$ ./2-repetition_token_1.rb "hbttn" | cat -e
     hbttn$
     ```

4. **3-repetition_token_2.rb**
   - Requirements: Find the regular expression that matches specified cases.
   - Example:
     ```bash
     sylvain@ubuntu$ ./3-repetition_token_2.rb "hbtn" | cat -e
     hbtn$
     ```

5. **4-repetition_token_3.rb**
   - Requirements: Find the regular expression that matches specified cases without using square brackets.
   - Example:
     ```bash
     sylvain@ubuntu$ ./4-repetition_token_3.rb "hbn" | cat -e
     hbn$
     ```

6. **5-beginning_and_end.rb**
   - Requirements: The regular expression must exactly match a string that starts with "h," ends with "n," and can have any single character in between.
   - Example:
     ```bash
     sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
     hbn$
     ```

7. **6-phone_number.rb**
   - Requirement: The regular expression must match a 10-digit phone number.
   - Example:
     ```bash
     sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
     4155049898$
     ```

8. **7-OMG_WHY_ARE_YOU_SHOUTING.rb**
   - Requirement: The regular expression must match only capital letters.
   - Example:
     ```bash
     sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "HELLO World" | cat -e
     HELLOW$
     ```

9. **100-textme.rb**
   - Requirement: Extract information from a log file and output sender, receiver, and flags.
   - Example:
     ```bash
     $ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: ... [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] ...'
     Google,+16474951758,-1:0:-1:0:-1
     ```

## Resources and References
* [Regular expressions - basics](https://intranet.alxswe.com/rltoken/6VeaVMaugIxcFAwA27TBdQ)
* [Regular expressions - advanced](https://intranet.alxswe.com/rltoken/rntjh3-3S86zt0Qy28L10w)
* [Rubular is your best friend](https://intranet.alxswe.com/rltoken/RGkVuw1lZ_hoCCbLsiOAhg)
* [Use a regular expression against a problem: now you have 2 problems](https://intranet.alxswe.com/rltoken/Vwm8lpMUGa4x_FBtlyUQ8g)
* [Learn Regular Expressions with simple, interactive exercises](https://intranet.alxswe.com/rltoken/XsQ6rzS1uy-E6bnswUqIKg)


## Notes
- All scripts should be executable.
- The first line of all Ruby scripts should be `#!/usr/bin/env ruby`.

