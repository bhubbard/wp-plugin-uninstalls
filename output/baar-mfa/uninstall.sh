#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'baarmfa_settings'
wp option delete 'baar_settings'
wp option delete 'BAAR_EmailSetting'
wp option delete 'BAAR_Report'
wp option delete 'bca_brand_name'
wp option delete 'bca_brand_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_setup_later_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_setup_later_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_setup_later_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_setup_later_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otp_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
