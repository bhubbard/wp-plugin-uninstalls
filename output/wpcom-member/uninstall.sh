#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmx_options'
wp option delete 'izt_theme_options'
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_view_order_endpoint'
wp option delete 'wxmp_token'

# Clear Cron Jobs
wp cron event delete 'wpcom_cron_flush_rewrite_rules'
wp cron event delete 'wpcom_sessions_clear'
wp cron event delete 'wpmx_cron_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_wpadmin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_wpadmin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_wpadmin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_wpadmin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_adminbar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_adminbar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_adminbar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_adminbar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_sys_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_sys_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_sys_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_sys_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_approve'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_approve'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_approve'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_approve'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_cover'"
