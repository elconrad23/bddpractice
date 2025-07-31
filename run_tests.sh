#!/bin/bash

echo "Starting BDD tests for e-Voting Login Page..."

# Run Django server in the background (optional if already running)
echo "Launching Django server..."
python manage.py runserver &

# Store PID of server to kill later
SERVER_PID=$!
sleep 5  # Wait for server to start

# Run behave tests
echo "Running Behave BDD tests..."
behave features/login.feature

# Kill Django server
echo "Shutting down Django server..."
kill $SERVER_PID

echo "Test complete."
