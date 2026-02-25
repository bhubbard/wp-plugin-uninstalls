-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_BrowserDetectAlgorithm';
DELETE FROM wp_options WHERE option_name LIKE '%_useNewBrowserDetect';
DELETE FROM wp_options WHERE option_name LIKE '%_Redirect404';
DELETE FROM wp_options WHERE option_name LIKE '%_RedirectLogin';
DELETE FROM wp_options WHERE option_name LIKE '%_BlockProxy';
DELETE FROM wp_options WHERE option_name LIKE '%_AllowShortBots';
DELETE FROM wp_options WHERE option_name LIKE '%_IPUseAdmin';
DELETE FROM wp_options WHERE option_name LIKE '%_BRUseAdmin';
DELETE FROM wp_options WHERE option_name LIKE '%_RecoveryGUID';

