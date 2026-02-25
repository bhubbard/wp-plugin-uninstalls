-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_test';
DELETE FROM wp_options WHERE option_name LIKE '%_PayPal_Email';
DELETE FROM wp_options WHERE option_name LIKE '%_Suppress_Notification_Emails';
DELETE FROM wp_options WHERE option_name LIKE '%_Users_Library_Page';
DELETE FROM wp_options WHERE option_name LIKE '%_db_table_name_case';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_BlogAmount';
DELETE FROM wp_options WHERE option_name LIKE '%_PayToRegisterAmount';
DELETE FROM wp_options WHERE option_name LIKE '%_BlogExpire';
DELETE FROM wp_options WHERE option_name LIKE '%_BlogExpirationUnits';
DELETE FROM wp_options WHERE option_name LIKE '%_PayToRegisterExpire';
DELETE FROM wp_options WHERE option_name LIKE '%_PayToRegisterExpirationUnits';
DELETE FROM wp_options WHERE option_name LIKE '%_InstantPaymentTemplate';
DELETE FROM wp_options WHERE option_name LIKE '%_RecurentPaymentTemplate';
DELETE FROM wp_options WHERE option_name LIKE '%_LoginButtonTemplate';

