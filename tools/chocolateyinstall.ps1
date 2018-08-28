$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'http://www.win10pcap.org/download/Win10Pcap-v10.2-5002.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'win10pcap*' 
  checksum      = 'CE1169C7CAC4BC9BC45E159CEC069F0AB57C42FC3F636456A2E404CC6B91E855'
  checksumType  = 'sha256' 
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0, 3010, 1641)

}

Install-ChocolateyPackage @packageArgs 
