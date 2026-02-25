#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-project-essentials'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_current'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_current'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_current'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_current'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
