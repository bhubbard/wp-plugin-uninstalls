#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'settings_control_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verification_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verification_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verification_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verification_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_factor_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_factor_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_factor_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_factor_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_factor_otp_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_factor_otp_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_factor_otp_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_factor_otp_expiry'"
