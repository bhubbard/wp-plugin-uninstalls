-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ntdtCurrentVersion', 'ntdtCurrentType', 'optStepRV', 'optSendMail', 'optRedirect', 'optDayTillRV', 'optEnabled', 'optBooked', 'optDisabled', 'optReason', 'optBtnBg', 'optBtnBgHover', 'optBtnCol', 'optBtnColHover', 'optFormatDateRV', 'optPublicHolidays', 'optUserHolidays', 'optNbHourButtons', 'optInfoCmt', 'optInfoCmtIcon', 'optInfoCmtMsg1', 'optInfoCmtFromDate1', 'optInfoCmtToDate1', 'optInfoCmtColor1', 'optInfoCmtMsg2', 'optInfoCmtFromDate2', 'optInfoCmtToDate2', 'optInfoCmtColor2', 'optInfoCmtMsg3', 'optInfoCmtFromDate3', 'optInfoCmtToDate3', 'optInfoCmtColor3', 'optSender', 'optFirm', 'optOnlyRV', 'optPathRV', 'optReadDataRV', 'optVersionDB');
DELETE FROM wp_options WHERE option_name LIKE 'optStartHourAM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optStartMinAM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optEndHourAM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optEndMinAM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optStartHourPM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optStartMinPM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optEndHourPM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optEndMinPM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optOpenAM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optOpenPM_%';
DELETE FROM wp_options WHERE option_name LIKE 'optClosed_%';
DELETE FROM wp_options WHERE option_name LIKE 'optClosed_6%';
DELETE FROM wp_options WHERE option_name LIKE 'optClosed_0%';

