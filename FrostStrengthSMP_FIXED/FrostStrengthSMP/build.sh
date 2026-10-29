#!/bin/bash
# Build script for FrostStrengthSMP
# Usage: ./build.sh

set -e

echo "========================================"
echo "  FrostStrengthSMP Build Script"
echo "========================================"

# Check Java version
JAVA_VER=$(java -version 2>&1 | head -1 | cut -d'"' -f2 | cut -d'.' -f1-2)
echo "Java version: $JAVA_VER"

# Check Maven
if ! command -v mvn &> /dev/null; then
    echo "ERROR: Maven not found. Install Maven first."
    exit 1
fi

echo "Maven found: $(mvn -version 2>&1 | head -1)"

# Clean and package
echo ""
echo "Building FrostStrengthSMP..."
mvn clean package -DskipTests

echo ""
echo "========================================"
echo "  Build Complete!"
echo "========================================"
echo "Plugin jar: target/FrostStrengthSMP-1.0.0.jar"
echo ""
echo "Next steps:"
echo "1. Copy target/FrostStrengthSMP-1.0.0.jar to your Paper server's plugins/ folder"
echo "2. Start your server to generate config.yml"
echo "3. Edit config.yml to customize Frost SMP"
echo "4. Run /strengthadmin reload in-game"
echo "5. Enjoy Frost SMP!"
echo "========================================"
