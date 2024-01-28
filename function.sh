function soma() {
    
    NAME=$((3+2))

    echo "$NAME"

}


function somaInterativa() {
    
    echo "Digite o primeiro numero: "
    read num1
    
    echo "Digite o segundo numero: "
    read num2
    
    RESULTADO=$(($num1+$num2))

    echo "O resultado da soma foi: $RESULTADO"

}

multiplicacao(){


    # The expr command in Unix evaluates a given expression and displays its corresponding output. It is used for:

    # Basic operations like addition, subtraction, multiplication, division, and modulus on integers.
    # Evaluating regular expressions, string operations like substring, length of strings etc.
    
    expr 3 \* 12

}

soma

multiplicacao

somaInterativa

sleep 1000