#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bonddesign_bonddesign_sstoc_options'
wp option delete 'bonddesign_sstoc_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bonddesign_sstoc_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bonddesign_sstoc_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bonddesign_sstoc_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bonddesign_sstoc_disable'"
