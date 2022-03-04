(directive_argument) @keyword

(directive_name) @keyword

; capture : @
(directive_attribute
    (directive_name) @punctuation.bracket
    (directive_argument))

(attribute_name) @keyword

((tag_name) @constructor
 (#match? @constructor "^[A-Z]"))
