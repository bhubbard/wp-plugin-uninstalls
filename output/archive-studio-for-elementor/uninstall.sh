#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'archstel_layout_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_color'"
