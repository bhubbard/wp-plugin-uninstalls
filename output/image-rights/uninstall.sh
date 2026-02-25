#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcr_option_1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcr_photographer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcr_photographer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcr_photographer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcr_photographer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcr_photographer_platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcr_photographer_platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcr_photographer_platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcr_photographer_platform'"
