#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joinchat_notice_dismiss'
wp option delete 'joinchat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_joinchat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_joinchat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_joinchat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_joinchat'"
