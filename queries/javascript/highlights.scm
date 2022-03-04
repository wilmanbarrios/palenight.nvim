(undefined) @constant.builtin

(variable_declarator
  name: (identifier) @variable.pink)

((identifier) @constructor
 (#vim-match? @constructor "^(console|window|document)$"))
