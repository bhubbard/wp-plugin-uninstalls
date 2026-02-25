#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplalr_login_redirect'
wp option delete 'wplalr_logout_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplalr_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplalr_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplalr_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplalr_last_login'"
