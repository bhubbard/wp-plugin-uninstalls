#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_region'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_adapter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hijack_wp_mail'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customer_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account_sid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auth_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from'"

