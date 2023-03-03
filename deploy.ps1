New-Item -Name 'target' -ItemType 'directory' -Force;
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\Denon Prime4 Screen.xml';
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\Denon Prime4 Screen.png';
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\Denon PrimeGO Screen.xml';
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\Denon PrimeGO Screen.png';
Compress-Archive -Path '.\target\Denon PRIMEGO Screen.*' -Update -DestinationPath '..\..\Denon PRIMEGO Screen.zip';
Compress-Archive -Path '.\target\Denon Prime4 Screen.*' -Update -DestinationPath '..\..\Denon Prime4 Screen.zip';
Compress-Archive -Path '.\target\Denon PRIMEGO Screen.*' -Update -DestinationPath '.\target\Denon PRIMEGO Screen.zip';
Compress-Archive -Path '.\target\Denon Prime4 Screen.*' -Update -DestinationPath '.\target\Denon Prime4 Screen.zip';