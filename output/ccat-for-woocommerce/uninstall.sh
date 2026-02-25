#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_invoice_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_chk_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_chk_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_merchant_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_merchant_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_migration_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_tel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_mobile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_address'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%api_access_token' OR option_name LIKE '_site_transient_%api_access_token'"
wp transient delete 'api_access_token'

