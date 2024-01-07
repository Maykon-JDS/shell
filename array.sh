index_array=(1 2 3 4 5 6 7 8 9 0)

declare -a indexed_array
indexed_array[0]=1
indexed_array[1]=2

for i in ${index_array[@]}; do
    echo $i
done

# echo ${indexed_array[0]}

function nome_da_funcao() {
    if [ ${indexed_array[0]} -eq 1 ]; then
        echo "Equal"
    else
        echo "Not Equal"
    fi
}

function testar() {
    local parametro
    read -r parametro # Leitura do parâmetro

    if [ "${parametro}" == "Equal" ]; then
        echo "0"
    else
        echo "1"
    fi
}

nome_da_funcao | testar

sleep 10
