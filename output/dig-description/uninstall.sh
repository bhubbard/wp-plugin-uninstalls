#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dig_description_home_description'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_archive_description'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dig_description_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dig_description_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dig_description_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dig_description_meta_description'"
