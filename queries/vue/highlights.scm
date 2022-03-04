; capture : @
(directive_attribute
    (directive_name) @punctuation.bracket
    (directive_argument))

; component name: <FooBar />
((tag_name) @constructor
 (#match? @constructor "^[A-Z]"))
