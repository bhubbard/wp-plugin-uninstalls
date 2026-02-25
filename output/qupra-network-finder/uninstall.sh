#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%qupra_api_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_verified'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%display_pricings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%network_pricings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%qupra_network_pricings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%next_api_key'"

