#!/bin/bash

echo "Enter two numbers:"
read a b

echo "Choose operation (+ - * /):"
read op

case "$op" in
    +)
        echo "Result = $((a + b))"
        ;;
    -)
        echo "Result = $((a - b))"
        ;;
    \*)
        echo "Result = $((a * b))"
        ;;
    /)
        echo "Result = $((a / b))"
        ;;
    *)
        echo "Invalid operator"
        ;;
esac



# :'
#     For basic calculator.
# '

# #!/bin/bash

# echo " Enter two numbers : "
# read a b

# echo " Choose the operation ( + - * % ) :  "
# read op

# case "$op" in 

#     +)
#         echo " The Result is : $(( a + b )) "
#         ;;

#     -)
#         echo " The Result is : $(( a - b ))"
#         ;;;
#     \*)
#         echo " The Result is : $(( a * b )) "
#         ;;
#     /)
#         echo " The Result is : $(( a / b )) "
#         ;;
#     *)
#         echo " Invalid Operator "   
#         ;;
# esac