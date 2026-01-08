# ## PowerShell Script Explanation

### Line 1
```powershell
for ($i = 1; $i -le 10; $i++) {
Starts a for loop

$i = 1 → initializes variable i with value 1

$i -le 10 → loop runs while i is less than or equal to 10

$i++ → increments i by 1 after each iteration

{ → start of loop block

Result: Loop runs 10 times (i = 1 to i = 10)

Line 2
powershell
Copy code
$folder = "folder $i"
Creates a variable named $folder

Uses variable substitution

Examples:

i = 1 → folder 1

i = 2 → folder 2

Line 3
powershell
Copy code
New-Item -ItemType Directory -Name $folder -Force
New-Item → creates a new item

-ItemType Directory → specifies a folder

-Name $folder → folder name

-Force → avoids errors if folder exists

Result:

python-repl
Copy code
folder 1
folder 2
...
folder 10
Line 4
powershell
Copy code
"This is txt $i inside folder $i." | Out-File "$folder\txt $i.txt"
Left side → text content

| → pipe sends output to next command

Out-File → writes content to a file

Example output:

nginx
Copy code
folder 3\txt 3.txt
Line 5
powershell
Copy code
}
Ends the for loop

Final Folder Structure
python-repl
Copy code
folder 1
 └── txt 1.txt
folder 2
 └── txt 2.txt
...
folder 10
 └── txt 10.txt
yaml
Copy code

---
:wq
:wq

