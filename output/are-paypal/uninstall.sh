#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_PayPal_Email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Suppress_Notification_Emails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Users_Library_Page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_table_name_case'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_BlogAmount'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_PayToRegisterAmount'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_BlogExpire'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_BlogExpirationUnits'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_PayToRegisterExpire'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_PayToRegisterExpirationUnits'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_InstantPaymentTemplate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_RecurentPaymentTemplate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_LoginButtonTemplate'"

