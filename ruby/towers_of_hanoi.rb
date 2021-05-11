def hanoi_steps(number_of_discs)
 	hanoi(number_of_discs, 1, 3, 2)  
end

def hanoi(number_of_discs, origin, goal, intermediate)
	if	number_of_discs == 1 
		puts "#{origin}->#{goal}\n" 
    else
        hanoi(number_of_discs - 1, origin, intermediate, goal)  # move n-1 ordered stack to intermediate
        puts "#{origin}->#{goal}\n"                            # move bigger disk to goal
		hanoi(number_of_discs - 1, intermediate, goal, origin)  # move n-1 ordered stack to the goal
	end
end

# Challenge from repl.it

# Create a program that solves the tower of Hanoi. You will be given one number as input - the number of disks on Peg 1. 
# Create a method that prints a string with the correct steps to solve the puzzle.

# Output Format

# Print the peg to move from, an arrow "->", and the peg to move to. For example, to move from peg 1 to peg 3, print:
# 1->3.
# Print a string with all the steps, each step on its own line.

# debug
# hanoi_steps(3)

# stack a {
# hanoi(3,1,3,2) [linea2]
# number_of_discs = 3
# origin = 1
# goal = 3
# intermediate = 2

#     stack b {
#     hanoi(2, 1, 2, 3) [linea9]
#     number_of_discs = 2
#     origin = 1
#     goal = 2
#     intermediate = 3
        
#         stack c {
#         hanoi(1, 1, 3, 2) [linea9]
#         number_of_discs = 1
#         origin = 1
#         goal = 3
#         intermediate = 2
#         1 -> 3 [linea7]
#         }

#     1 -> 2 [linea10]

#         stack d {
#         hanoi(1, 3, 2, 1) [linea11]
#         number_of_discs = 1
#         origin = 3
#         goal = 2
#         intermediate = 1
#         3 -> 2 [linea7]
#         }
#     }
    
# 1 -> 3 [linea10]

#     stack e {
#     hanoi(2, 2, 3, 1) [linea11]
#     number_of_discs = 2
#     origin = 2
#     goal = 3
#     intermediate = 1

#         stack f {
#         hanoi(1, 2, 1, 3) [linea9]
#         number_of_discs = 1
#         origin = 2
#         goal = 1
#         intermediate = 3
#         2 -> 3 [linea7]
#         }
    
#     2 -> 3 [linea10]

#         stack g {
#         hanoi(1, 1, 3, 2) [linea11]
#         number_of_discs = 1
#         origin = 1
#         goal = 3
#         intermediate = 2
#         1 -> 3 [linea7]
#         }
#     }
# }
