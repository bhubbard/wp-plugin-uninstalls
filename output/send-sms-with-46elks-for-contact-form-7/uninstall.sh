#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-sms-46elks-from'
wp option delete 'wp-sms-46elks-default-countrycode'
wp option delete 'wp-sms-46elks-balancealert'
wp option delete 'wp-sms-46elks-balancealerte-mail'
wp option delete 'wp-sms-46elks-balancealert-phone-number'
wp option delete 'wp-sms-46elks-balancealert-sent'
wp option delete 'wp-sms-46elks-api-username'
wp option delete 'wp-sms-46elks-api-password'
wp option delete 'wp-sms-46elks-cf7-form-name'
wp option delete 'wp-sms-46elks-cf7-send-sms'
wp option delete 'wp-sms-46elks-cf7-send-to'
wp option delete 'wp-sms-46elks-cf7-sms-content'
wp option delete 'wp-sms-46elks-cf7-sender-id'
wp option delete 'wp-sms-46elks-cf7-from'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-form-name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-sms-content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-sender-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-send-to'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-balancealert'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-balancealert-sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-balancealert-email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-balancealert-phone-number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-api-username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-api-password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-sender-id-test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-default-countrycode'"

