#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LFS_lao_font'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LFS_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LFS_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LFS_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LFS_fonts'"
