#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'html_mode_lock'
wp option delete 'html_mode_lock_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html_mode_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html_mode_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html_mode_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html_mode_lock'"
