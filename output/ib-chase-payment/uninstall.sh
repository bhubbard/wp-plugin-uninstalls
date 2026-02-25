#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ibhpp_chase_payment_api_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
