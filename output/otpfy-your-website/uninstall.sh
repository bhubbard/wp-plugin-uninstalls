#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_default_country'
wp option delete 'otpfy-for-wordpress-settings'

# Delete Transients
wp transient delete 'otpfy_refresh_balance_onload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_otpfy_otp_%' OR option_name LIKE '_site_transient_otpfy_otp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_otpfy_%' OR option_name LIKE '_site_transient_otpfy_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bt_otpfy_user_mobile_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bt_otpfy_user_mobile_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bt_otpfy_user_mobile_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bt_otpfy_user_mobile_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otpfy_otp_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otpfy_otp_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otpfy_otp_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otpfy_otp_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otpfy_otp_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otpfy_otp_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otpfy_otp_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otpfy_otp_verified'"
