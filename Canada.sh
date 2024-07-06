#!/bin/bash

echo "Hello, welcome to Dan's Convenient Stores customer support centre."
echo

# Function to handle client interaction
function client_interaction {
  echo "How may we be of help?"
  echo

  read -p "Please enter your name: " name  # Add space after prompt

  echo "Welcome $name!"
  echo

  read -p "Please enter your budget for this transaction: " budget
  echo

  # Check if the budget meets or exceeds $200,000
  if [[ $budget -ge 200000 ]]; then
    echo "Wonderful! We're excited to partner with you and ensure you have a positive experience with us."
    echo

    read -p "Please enter your email address: " customer_email
    echo

    read -p "Please enter your phone number: " customer_phone
    echo

    read -p "Please enter the product name: " product_name

  else
    echo "Thank you $name for choosing Dan's Convenient Stores for all your daily needs, we appreciate your patronage."
    echo "However, your budget of $budget is below our minimum requirements."
    echo "You're always welcome to use our services when you have the required budget. We are always ready to assist you with your purchases and/or transactions."
  fi
}

# Start the interaction
while true; do
  client_interaction

  # Ask if there are more clients to assist
  echo
  echo "Please hold on while I transfer you to a member of our team (for complex inquiries)."  # Clarify purpose of transfer
  echo

  read -p "Is there anything else I can help you with today? (yes/no): " answer

  # Check user response to continue or exit
  if [[ "$answer" == "yes" ]]; then
    echo "What can I do for you?"
  elif [[ "$answer" == "no" ]]; then
    echo "Thank you for patronizing Dan's Convenient Stores, we hope to see you again soon. Goodbye!"
    break  # Exit the loop on "no" answer
  else
    echo "Invalid input. Please answer yes or no."  # Handle invalid input
  fi
done