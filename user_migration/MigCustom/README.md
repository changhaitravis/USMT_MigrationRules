# USMT_MigrationRules
USMT 10.0 Modified MigApp.xml with Office 2016 support along with a handful of standalone application rules.

use the `/i:` flag to include the Migration Rule .xml files you want to use.

Core:
- MigDocs.xml
- MigUser.xml
- MigApp-with-Office2016.xml

Supplement/Standalones:
- Mig-SecureCRT.xml
- MigApp-WinSCP-standalone.xml

## Example Usage:
### savestate:
`scanstate T:\MigData\%whichProfile% /ue:*\* /ui:Contoso\%whichProfile% /i:MigDocs.xml /i:MigApp-with-Office2016.xml /i:Mig-SecureCRT.xml /i:MigApp-WinSCP-standalone.xml /i:MigUser.xml /v:13 /l:T:\MigData\%whichProfile%\scanstate.log`

### loadstate:
`loadstate T:\MigData\%whichProfile% /ue:*\* /ui:Contoso\%whichProfile% /i:MigDocs.xml /i:MigApp-with-Office2016.xml /i:Mig-SecureCRT.xml /i:MigApp-WinSCP-standalone.xml /i:MigUser.xml /v:13 /l:T:\MigData\%whichProfile%\loadstate.log`
