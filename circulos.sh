function circulo(){

    PI=3.14

    echo "Qual o raio do circulo?"

    read RAIO

    if [ -n "$RAIO" ] && [ -z "$DIAMETRO" ]; then
       
        DIAMETRO=$(awk "BEGIN { printf(\"%.2f\", $RAIO * 2 ) }")

        CIRCUNFERENCIA=$(awk "BEGIN { printf(\"%.2f\", $RAIO * 2 * $PI ) }")

    else

    echo "Qual o diametro do circulo?"

    read DIAMETRO

        if [ -n "$DIAMETRO" ] && [ -z "$RAIO" ]; then
        
            RAIO=$(awk "BEGIN { printf(\"%.2f\", $DIAMETRO / 2 ) }")

            CIRCUNFERENCIA=$(awk "BEGIN { printf(\"%.2f\", $RAIO * 2 * $PI ) }") 

        else

            echo "Qual a circunferencia do circulo?"

            read CIRCUNFERENCIA

            if [ -n "$CIRCUNFERENCIA" ] && [ -z "$RAIO" ]; then
       
                RAIO=$(awk "BEGIN { printf(\"%.2f\", $CIRCUNFERENCIA / (2 * $PI)) }")

                DIAMETRO=$(awk "BEGIN { printf(\"%.2f\", $CIRCUNFERENCIA / $PI ) }")

            else

                echo "Impossivel Calcular!"

            fi #This marks the end of the if statement.

    
        fi #This marks the end of the if statement.

    
    fi #This marks the end of the if statement.

    echo ""

    echo "RAIO: $RAIO"

    echo "DIAMETRO: $DIAMETRO"

    echo "CIRCUNFERENCIA: $CIRCUNFERENCIA"

}

circulo

sleep 1000