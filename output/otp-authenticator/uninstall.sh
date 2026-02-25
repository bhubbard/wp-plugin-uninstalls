#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otpa_logs_settings'
wp option delete 'otpa_settings'
wp option delete 'otpa_style_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_enable_guest_checkout'

# Delete Transients
wp transient delete 'otpa_flush'

# Clear Cron Jobs
wp cron event delete 'otpa_logs_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_force_account_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_force_account_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_force_account_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_force_account_validation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_2fa_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_2fa_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_2fa_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_2fa_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_2fa_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_2fa_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_2fa_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_2fa_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_2fa_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_2fa_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_2fa_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_2fa_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_need_2fa_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_need_2fa_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_need_2fa_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_need_2fa_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_account_validation_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_account_validation_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_account_validation_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_account_validation_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_validated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_validated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_validated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_validated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_need_account_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_need_account_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_need_account_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_need_account_validation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_otp_request_wait'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_otp_request_wait'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_otp_request_wait'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_otp_request_wait'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_set_otp_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_set_otp_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_set_otp_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_set_otp_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_verification_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_verification_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_verification_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_verification_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpa_otp_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpa_otp_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpa_otp_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpa_otp_attempts'"
