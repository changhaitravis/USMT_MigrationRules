*MigApp-with-Office2016.xml* is MigApp-Stock.xml + MigApp-Office2016-snippets.
It supports Office 2016 -> Office 2016 (32-bit) and Office 2013 -> Office 2016 (32-bit).

*Mig-SecureCRT.xml* Will attempt to copy over the contents of "C:\Program Files\VanDyke Software\SecureCRT\Config"

*MigApp-WinSCP-standalone.xml* Will copy over the Config for WinSCP held on Registry.

USMT10 obtained as part of the Windows ADK 10:
https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit?ocid=tia-235208000

USMT10 Installs Here:
C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\User State Migration Tool

`scanstate \\gcasearch.finance.washington.edu\FOR_TERRA\MigData /ue:*\* /ui:NETID\[____] /i:MigDocs.xml /i:MigApp-with-Office2016.xml /i:Mig-SecureCRT.xml /i:MigApp-WinSCP-standalone.xml /v:13 /l:scanstate.log`