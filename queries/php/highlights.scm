; ::class
(class_constant_access_expression
    (name) @constant.builtin
        (#eq? @constant.builtin "class"))

"$" @punctuation.delimiter

; FooBar::$baz
(scoped_property_access_expression
    scope: (name) @type)
