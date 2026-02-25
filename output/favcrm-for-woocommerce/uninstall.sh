#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'favored_options'
wp option delete 'favored_registered'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fav_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fav_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fav_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fav_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
