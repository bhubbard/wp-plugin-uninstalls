#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exclude_pages_from_menu'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_epfm_meta_box_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_epfm_meta_box_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_epfm_meta_box_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_epfm_meta_box_field'"
