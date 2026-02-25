#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ntdtCurrentVersion'
wp option delete 'ntdtCurrentType'
wp option delete 'optStepRV'
wp option delete 'optSendMail'
wp option delete 'optRedirect'
wp option delete 'optDayTillRV'
wp option delete 'optEnabled'
wp option delete 'optBooked'
wp option delete 'optDisabled'
wp option delete 'optReason'
wp option delete 'optBtnBg'
wp option delete 'optBtnBgHover'
wp option delete 'optBtnCol'
wp option delete 'optBtnColHover'
wp option delete 'optFormatDateRV'
wp option delete 'optPublicHolidays'
wp option delete 'optUserHolidays'
wp option delete 'optNbHourButtons'
wp option delete 'optInfoCmt'
wp option delete 'optInfoCmtIcon'
wp option delete 'optInfoCmtMsg1'
wp option delete 'optInfoCmtFromDate1'
wp option delete 'optInfoCmtToDate1'
wp option delete 'optInfoCmtColor1'
wp option delete 'optInfoCmtMsg2'
wp option delete 'optInfoCmtFromDate2'
wp option delete 'optInfoCmtToDate2'
wp option delete 'optInfoCmtColor2'
wp option delete 'optInfoCmtMsg3'
wp option delete 'optInfoCmtFromDate3'
wp option delete 'optInfoCmtToDate3'
wp option delete 'optInfoCmtColor3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optStartHourAM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optStartMinAM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optEndHourAM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optEndMinAM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optStartHourPM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optStartMinPM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optEndHourPM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optEndMinPM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optOpenAM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optOpenPM_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optClosed_%'"
wp option delete 'optSender'
wp option delete 'optFirm'
wp option delete 'optOnlyRV'
wp option delete 'optPathRV'
wp option delete 'optReadDataRV'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optClosed_6%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optClosed_0%'"
wp option delete 'optVersionDB'

