#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_redirect_url_hosts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_redirect_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_redirect_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_redirect_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_redirect_page'"
