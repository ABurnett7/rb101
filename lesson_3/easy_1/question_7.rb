# If we build an array like this:


# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

p ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!
# be sure to use ! if you want to mutate it