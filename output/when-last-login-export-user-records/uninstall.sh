#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wll_user_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'when_last_login_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'when_last_login_count'"
