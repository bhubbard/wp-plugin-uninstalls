#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sh_hide_all_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_featured'"
