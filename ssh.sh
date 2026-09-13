servers=()

while true; do
    echo " "
    echo "=======server manager========="
    echo "1. Add a server"
    echo "2. list servers"
    echo "3. check server health"
    echo "4. ssh inside a server"
    echo "5. exit"
    echo " "

    read -p "enter your choice " choice

    case $choice in
        1) 
            read -p "enter server ip: " ip
            servers+=("$ip")
            echo "server added successfully!"
            ;;
        
        2) 
            echo "here are the saved servers: "
            
            for ip in "${servers[@]}"; do
                echo "$ip"
            done
            ;;
    esac 
done