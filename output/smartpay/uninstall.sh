#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartpay_settings'
wp option delete 'smartpay_db_version'
wp option delete 'smartpay_settings_general'
wp option delete 'smartpay_settings_gateways'
wp option delete 'smartpay_settings_emails'
wp option delete 'smartpay_settings_licenses'
wp option delete 'smartpay_settings_extensions'
wp option delete 'smartpay_pro_license_data'

# Delete Transients
wp transient delete 'wpsmartpay_activation_redirect'
wp transient delete 'smartpay_check_protect_upload_directory'

# Clear Cron Jobs
wp cron event delete 'smartpay_cleanup_file_symlinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartpay_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartpay_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartpay_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartpay_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartpay_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartpay_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartpay_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartpay_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartpay_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartpay_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartpay_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartpay_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartpay_optin_third_time_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartpay_optin_third_time_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartpay_optin_third_time_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartpay_optin_third_time_dismissed_at'"
