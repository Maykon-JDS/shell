num1=5.25
num2=2.5
 
# Multiplication
result=$(awk "BEGIN { printf(\"%.2f\", $num1 * $num2) }")
echo "Multiplication: $result"
 
# Division
result=$(awk "BEGIN { printf(\"%.2f\", $num1 / $num2) }")
echo "Division: $result"

sleep 1000