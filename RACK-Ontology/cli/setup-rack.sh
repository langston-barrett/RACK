#!/bin/sh
set -e

if ! command -v rack
then
        echo "rack cli tool not found in PATH"
        exit 1
fi

rack model      import ../OwlModels/import.yaml
rack nodegroups import ../../nodegroups/ingestion
rack nodegroups import ../../nodegroups/queries
rack data       import --clear ../models/TurnstileSystem/Data/import.yaml
