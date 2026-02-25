#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfunnel_ignore_legacy'
wp option delete 'wpfunnel_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfunnel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfunnel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfunnel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfunnel'"
