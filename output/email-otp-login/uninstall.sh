#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emaiotlo_email_login_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emaiotlo_email_login_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emaiotlo_email_login_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emaiotlo_email_login_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emaiotlo_email_login_otp_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emaiotlo_email_login_otp_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emaiotlo_email_login_otp_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emaiotlo_email_login_otp_expiry'"
