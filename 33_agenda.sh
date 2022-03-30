#!/usr/bin/env bash
# 
# todas as variáveis no shell são um array,
# de padrão as atribuição são armazenada no índice 0
# adicionando mais itens ao array é adicionado nos índices posteriores
# 
COLUMN_ID='0'                             ## column default to ID
COLUMN_IDENTIFICATOR='1'                  ## column to identificator and messages

data_base='data_base.txt'                 ## data base path
all_data=("Name" "DDD" "Tel")             ## columns table
columns_unique=("1" "3")                  ## columns unique id
replaces=("s/\([a-z]\)/\U\1/g" "s/\-//g") ## replaces to apply in columns
columns_replaces=("1" "3")                ## columns id to receive replace 

red="\033[31;1m"
green="\033[32;1m"
close_color="\033[m"

# Verify #=====================================================================#
# [[ -f "${data_base}" ]] || > "${data_base}"
[[ -f "${data_base}" ]] || {
  cat > "${data_base}" <<EOF
#ID ${all_data[*]}
EOF
}

(($UID)) || { echo -e "\033[41mNot can't entry as root!\033[m"; exit 1 ;}

# Functions #==================================================================#
function _add() {
  # Get datas
  local count=1
  for data in "${all_data[@]}"; do
      while ! [[ "${data[$count]}" ]]; do read -p "Type your ${data}: " data[$count]; done
      ((count++))
  done

  # Replaces
  local count_replace=0
  for column_replace in "${columns_replaces[@]}"; do
    data[$column_replace]=$(sed "${replaces[$count_replace]}" <<< "${data[$column_replace]}")
    ((count_replace++))
  done

  # Create and format variavel to data base in csv
  # ID="$(($(wc -l "$data_base" | cut -d " " -f 1) + 1))"
  local ID="$(($(wc -l < "$data_base") + 1))"
  local csv="$ID"
  for item in "${data[@]}"; do 
    [[ "$item" != "${data[$COLUMN_ID]}" ]] && csv="${csv}:${item}"
  done;

  # Verify user exist
  for column_unique in "${columns_unique[@]}"; do
    if cut -d ":" -f $(($column_unique + 1)) "$data_base" | grep -qi "${data[$column_unique]}"; then
      { echo -e "${red}> Contact ${data[$COLUMN_IDENTIFICATOR]} exists${close_color}"; exit 1 ;}
    fi
  done

  # Add into data base
  echo $csv >> "$data_base"
  echo -e "${green}> Contact ${data[$COLUMN_IDENTIFICATOR]} added${close_color}"
}

function _search() {
  local search="$1"
  local count_search=1
  local found=$(grep -i "${search}" "${data_base}" 2>&-)

  if ! [[ "$found" ]]; then
    { echo -e "${red}> Search not found${close_color}"; exit 1 ;}
  fi

  echo -e "${green}> Search found${close_color}\n"
  for j in "${all_data[@]}"; do
    echo "${j}: $(echo "$found" | cut -d ":" -f $((count_search + 1)))"
    ((count_search++))
  done
}

case $1 in
  -a|--add)     shift; _add         ;;
  -s|--search)  shift; _search "$@" ;;
esac
