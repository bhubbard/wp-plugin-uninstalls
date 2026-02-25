#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'meowapps_hide_meowapps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_ads'
wp option delete 'force_sslverify'
wp option delete 'wpcp_hide_permalink'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_permalink'"
