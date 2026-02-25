#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'all_post_categories'
wp option delete 'all_post_types'
wp option delete 'all_post_formats'
wp option delete 'awac_priority'
wp option delete 'awac_styles'
wp option delete 'awac_extensions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awac_hide_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awac_hide_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awac_hide_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awac_hide_widget'"
