Remove-Item '.\target' -Recurse
New-Item -Name '.\target' -ItemType 'directory'
New-Item -Name '.\target\go' -ItemType 'directory'
New-Item -Name '.\target\4' -ItemType 'directory'
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\4\Denon Prime4 Screen.xml'
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\4\Denon Prime4 Screen.png'
Copy-Item '.\preview4.png' -Destination '.\target\4\preview.png'
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\go\Denon PrimeGO Screen.xml'
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\go\Denon PrimeGO Screen.png'
Copy-Item '.\previewgo.png' -Destination '.\target\go\preview.png'
Compress-Archive -Path '.\target\go\*' -Update -DestinationPath '.\target\Denon PRIMEGO Screen.zip'
Compress-Archive -Path '.\target\4\*' -Update -DestinationPath '.\target\Denon Prime4 Screen.zip'
Copy-Item '.\target\Denon PRIME*.zip' -Destination '..\..\'