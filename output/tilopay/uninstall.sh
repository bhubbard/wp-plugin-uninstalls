#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tilopay_settings'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'tpay_my_cron_tilopay'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tilopay_auth_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tilopay_auth_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tilopay_auth_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tilopay_auth_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tilopay_is_captured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tilopay_is_captured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tilopay_is_captured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tilopay_is_captured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpay_cancel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpay_cancel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpay_cancel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpay_cancel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tilopay_html_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tilopay_html_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tilopay_html_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tilopay_html_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authorization_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authorization_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authorization_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authorization_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpay_was_redirect_native'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpay_was_redirect_native'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpay_was_redirect_native'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpay_was_redirect_native'"
