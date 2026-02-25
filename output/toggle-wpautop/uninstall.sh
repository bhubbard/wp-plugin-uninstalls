#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lp_toggle_wpautop_settings'
wp option delete 'lp_toggle_wpautop_auto'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_disable_wpautop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_disable_wpautop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_disable_wpautop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_disable_wpautop'"
