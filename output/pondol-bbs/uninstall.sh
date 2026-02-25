#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

# Delete Transients
wp transient delete 'bbs_auth'
wp transient delete 'list_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_submission'"
