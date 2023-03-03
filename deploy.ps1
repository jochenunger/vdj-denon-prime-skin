New-Item -Name "target" -Path '.\' -ItemType 'directory' -Force;
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\Denon Prime4 Screen.xml' -Force;
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\Denon Prime4 Screen.png';
Copy-Item '.\Denon PRIME Screen.xml' -Destination '.\target\Denon PrimeGO Screen.xml';
Copy-Item '.\Denon PRIME Screen.png' -Destination '.\target\Denon PrimeGO Screen.png';
Compress-Archive -Path '.\target\Denon PRIMEGO Screen.png' -Update -DestinationPath '..\..\Denon PRIMEGO Screen.zip';
Compress-Archive -Path '.\target\Denon PRIMEGO Screen.xml' -Update -DestinationPath '..\..\Denon PRIMEGO Screen.zip';
Compress-Archive -Path '.\target\Denon Prime4 Screen.xml' -Update -DestinationPath '..\..\Denon Prime4 Screen.zip';
Compress-Archive -Path '.\target\Denon Prime4 Screen.png' -Update -DestinationPath '..\..\Denon Prime4 Screen.zip';
Compress-Archive -Path '.\target\Denon PRIMEGO Screen.png' -Update -DestinationPath '.\target\Denon PRIMEGO Screen.zip';
Compress-Archive -Path '.\target\Denon PRIMEGO Screen.xml' -Update -DestinationPath '.\target\Denon PRIMEGO Screen.zip';
Compress-Archive -Path '.\target\Denon Prime4 Screen.xml' -Update -DestinationPath '.\target\Denon Prime4 Screen.zip';
Compress-Archive -Path '.\target\Denon Prime4 Screen.png' -Update -DestinationPath '.\target\Denon Prime4 Screen.zip';