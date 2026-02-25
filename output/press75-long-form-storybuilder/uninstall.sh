#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'lfc_posts_to_update'
wp option delete 'lfc-saved-widgets'
wp option delete 'lfc_old_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_lfc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_lfc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_lfc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_lfc'"
