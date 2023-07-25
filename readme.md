## Nvim config:

My nvim config

## Notes: 

### required bindings
home / end 
^    / $

copy / paste
y    / p 

find
/

move line(s) down
J

move line(s) up
K

add cursor up/down
ctrl +     up/down

add cursor for matching word
ctrl + n

### other usefull commands

`ci`: change inside x
    - can add arbitrary chars to ci
    - eg `ciw` change inside word, erases a word and inserts cursor 
    - eg `ci"` change inside ", erases anything inside "" and inserts cursor
`d`: delete
    - chained with `i`
    - `di` delete inside
    - `diw` delete inside word, clears a word
    - `di(` delete inside brackets, clears everthing inside brackets
`%`: jumps to sibling bracket

`{`: jumps to previous blanks line
`}`: jumps to next blanks line
