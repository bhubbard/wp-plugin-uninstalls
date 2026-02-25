#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connection_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connection_endpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connection_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connection_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_ads_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_ads_account_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_ads_conversion_id'"
wp option delete 'active_sitewide_plugins'

