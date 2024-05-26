Remove-Item '.\target' -Recurse
New-Item -Name '.\target' -ItemType 'directory'
New-Item -Name '.\target\go' -ItemType 'directory'
New-Item -Name '.\target\4' -ItemType 'directory'
New-Item -Name '.\target\desktop' -ItemType 'directory'
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\4\Denon Prime4 Screen.xml'
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\4\Denon Prime4 Screen.png'
Copy-Item '.\preview4.png' -Destination '.\target\4\preview.png'
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\go\Denon PrimeGO Screen.xml'
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\go\Denon PrimeGO Screen.png'
Copy-Item '.\previewgo.png' -Destination '.\target\go\preview.png'
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\desktop\Extended Compact Screen.xml'
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\desktop\Extended Compact Screen.png'
Copy-Item '.\previewdesktop.png' -Destination '.\target\desktop\preview.png'
# (Get-Content '.\target\desktop\Extended Compact Screen.xml' -raw) `
#     -replace 'skin name="denonprime"', 'skin name="Extended Compact Skin"' `
#     -replace 'author="Jochen Unger" nbdecks="4" hidden="true"', 'image="preview.png" author="Jochen Unger" nbdecks="4"' |
#   Out-File '.\target\desktop\Extended Compact Screen.xml'

$tmp = (Get-Content '.\target\desktop\Extended Compact Screen.xml' -raw) `
     -replace 'skin name="denonprime"', 'skin name="Extended Compact Skin"' `
     -replace 'oninit action="set ''\$runsondesktop'' 0"', 'oninit action="set ''$runsondesktop'' 1"' `
     -replace 'author="Jochen Unger" nbdecks="4" hidden="true"', 'author="Jochen Unger" nbdecks="4"'
[System.IO.File]::WriteAllLines( '.\target\desktop\Extended Compact Screen.xml', $tmp)

Compress-Archive -Path '.\target\go\*' -Update -DestinationPath '.\target\Denon PRIMEGO Screen.zip'
Compress-Archive -Path '.\target\4\*' -Update -DestinationPath '.\target\Denon Prime4 Screen.zip'
Compress-Archive -Path '.\target\desktop\*' -Update -DestinationPath '.\target\Extended Compact Screen.zip'
Copy-Item '.\target\Denon PRIME*.zip' -Destination '..\..\'
Copy-Item '.\target\Extended Compact Screen.zip' -Destination '..\..\'