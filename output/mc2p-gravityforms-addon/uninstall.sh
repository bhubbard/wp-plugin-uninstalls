#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_mc2p_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismiss_mc2p_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismiss_mc2p_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismiss_mc2p_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismiss_mc2p_menu'"
