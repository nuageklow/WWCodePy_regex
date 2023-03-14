import re


potential_phone_number = '+1 123-555-6789'
pattern = r"^(\+\d+\s)?\d{3}[\-\.]?\d{3}[\-\.]?\d{4}$" 
compiled_pattern = re.compile(pattern)
match = re.match(compiled_pattern, potential_phone_number)

if match:
    print("Matched", match.string)

potential_phone_number = '+1  225.555.6789' 
match = re.match(compiled_pattern, potential_phone_number)
if match:
    print("Matched", match.string)
else:
    print("No match", potential_phone_number)
