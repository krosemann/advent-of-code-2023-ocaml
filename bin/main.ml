let split_lines text = String.split_on_char '\n' text

let alphanumeric_regex = Str.regexp "[a-zA-Z]*"

let digits_in_line line = Str.split alphanumeric_regex line

let two_digit_code_from digits = int_of_string (List.hd digits ^ List.hd (List.rev digits))

let sum ints = List.fold_left ( + ) 0 ints

let () = (split_lines Advent_of_code_2023.data) 
  |> List.map (fun line -> two_digit_code_from (digits_in_line line))
  |> sum
  |> string_of_int
  |> print_endline