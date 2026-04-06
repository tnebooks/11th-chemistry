#!/bin/bash

chapters=(
"Basic Concepts of Chemistry and Chemical Calculations"
"Quantum Mechanical Model of Atom"
"Periodic Classification Of Elements"
"Hydrogen"
"Alkali and Alkaline Earth Metals"
"Gaseous State"
"Thermodynamics"
"Physical and Chemical Equilibrium"
"Solutions"
"Chemical Bonding"
"Fundamentals of Organic Chemistry"
"Basic concepts of organic reactions"
"Hydrocarbons"
"Haloalkanes and Haloarenes"
"Environmental Chemistry"
)

i=1

for chapter in "${chapters[@]}"
do
    # Convert to lowercase kebab-case folder name
    folder=$(echo "$chapter" | tr '[:upper:]' '[:lower:]' | sed 's/&/and/g' | sed 's/[^a-z0-9 ]//g' | sed 's/ \+/-/g')

    # Paths
    en_path="content.en/docs/$folder"
    ta_path="content.ta/docs/$folder"
    q_path="questions/$folder"

    # Create directories
    mkdir -p "$en_path"
    mkdir -p "$ta_path"
    mkdir -p "$q_path"

    # Create English _index.md (overwrite)
    cat > "$en_path/_index.md" <<EOL
---
title: '$chapter'
categories:
    - $folder
weight: $i
---

$chapter
EOL

    # Create Tamil _index.md (only title)
    cat > "$ta_path/_index.md" <<EOL
$chapter tamil
EOL

    echo "Created: $folder"

    ((i++))
done