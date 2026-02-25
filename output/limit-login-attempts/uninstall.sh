#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_login_previous_cookie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_login_previous_cookie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_login_previous_cookie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_login_previous_cookie'"
