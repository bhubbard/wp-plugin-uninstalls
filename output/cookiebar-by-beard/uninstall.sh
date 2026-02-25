#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbbb_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbbb_script_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbbb_script_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbbb_script_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbbb_script_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbbb_script_location_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbbb_script_location_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbbb_script_location_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbbb_script_location_meta_key'"
