for ($i = 1; $i -le 10; $i++) {
    $folder = "folder $i"
    New-Item -ItemType Directory -Name $folder -Force
    "This is txt $i inside folder $i." | Out-File "$folder\txt $i.txt"
}