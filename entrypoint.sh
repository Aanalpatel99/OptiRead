#!/bin/bash
if [ "$1" = "test" ]; then
    pytest test/tes_optiread.py  # Run tests
else
    exec python app.py  # Start the app by default
fi
