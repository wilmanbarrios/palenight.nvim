; /**
;  * @return array
;  */
(type_list (primitive_type) @keyword)

; /**
;  * @param \Contegy\Models\User $notifiable
;  */
(variable_name (name) @variable)

(type_list "|" @operator)

; /**
;  * @param \Contegy\Models\User[] $users
;  * @param array[] $users
;  */
(array_type) @comment
(array_type (named_type) @type)
(array_type (primitive_type) @keyword)

(parameters [
    "("
    ")"
] @punctuation.bracket)

(variable_name "$" @punctuation.delimiter)
