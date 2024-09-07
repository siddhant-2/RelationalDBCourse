#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c "
MAIN_MENU() {
  AVAILABLE_SERVICES=$($PSQL "select service_id, name from services")
  echo "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR NAME
    do
      echo "$SERVICE_ID) $NAME"
    done

  echo -e '\nEnter Service ID'
  read SERVICE_ID_SELECTED

  VALID_SERVICE=$($PSQL "select SERVICE_ID from services where service_id=$SERVICE_ID_SELECTED")

  if [[ -z $VALID_SERVICE ]]
  then
    MAIN_MENU
  else 
    echo -e '\nEnter Phone Num'
    read CUSTOMER_PHONE
    VALID_NAME=$($PSQL "select NAME from CUSTOMERS where PHONE='$CUSTOMER_PHONE'")
    if [[ -z $VALID_NAME ]]
    then
      echo -e '\nEnter Name'
      read CUSTOMER_NAME
      INSERT_CUSTOMERS=$($PSQL "insert into customers(phone,name) values ('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
    fi
    CUSTOMER_NAME=$($PSQL "select NAME from CUSTOMERS where PHONE='$CUSTOMER_PHONE'")
    CUSTOMER_ID=$($PSQL "select CUSTOMER_ID from CUSTOMERS where PHONE='$CUSTOMER_PHONE'")
    SERVICE_NAME=$($PSQL "select NAME from services where service_id=$SERVICE_ID_SELECTED")
    echo -e '\nEnter time'
    read SERVICE_TIME
    INSERT_APPOINTMENT=$($PSQL "insert into APPOINTMENTS(customer_id,service_id,time) values ('$CUSTOMER_ID','$VALID_SERVICE','$SERVICE_TIME')")
    echo -e "\nI have put you down for a $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')."
  fi

}
MAIN_MENU