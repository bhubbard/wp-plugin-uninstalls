#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logoutTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logoutTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logoutTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logoutTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logout_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logout_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logout_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logout_user_ip'"
