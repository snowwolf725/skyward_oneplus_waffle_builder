awk 'FNR==3 {print FILENAME ": " $0}' patches/*.patch
