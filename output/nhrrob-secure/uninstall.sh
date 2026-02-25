#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nhrrob_secure_limit_login_attempts'
wp option delete 'nhrrob_secure_login_attempts_limit'
wp option delete 'nhrrob_secure_custom_login_page'
wp option delete 'nhrrob_secure_custom_login_url'
wp option delete 'nhrrob_secure_protect_debug_log'
wp option delete 'nhrrob_secure_enable_proxy_ip'
wp option delete 'nhrrob_secure_enable_2fa'
wp option delete 'nhrrob_secure_2fa_enforced_roles'
wp option delete 'nhrrob_secure_2fa_type'
wp option delete 'nhrrob_secure_dark_mode'
wp option delete 'nhrrob_secure_log_retention_days'
wp option delete 'nhrrob_secure_disable_xmlrpc'
wp option delete 'nhrrob_secure_disable_file_editor'
wp option delete 'nhrrob_secure_hide_wp_version'
wp option delete 'nhrrob_secure_disable_rest_users'
wp option delete 'nhrrob_secure_firewall_blocked_uas'
wp option delete 'nhrrob_secure_idle_timeout'
wp option delete 'nhrrob_secure_enable_advanced_firewall'
wp option delete 'nhrrob_secure_ip_whitelist'
wp option delete 'nhrrob_secure_ip_blacklist'
wp option delete 'nhrrob_secure_blocked_countries'
wp option delete 'nhrrob_secure_audit_log_version'

# Delete Transients
wp transient delete 'nhrrob_secure_vulnerability_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nhrrob_2fa_raw_codes_%' OR option_name LIKE '_site_transient_nhrrob_2fa_raw_codes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nhrrob_2fa_%' OR option_name LIKE '_site_transient_nhrrob_2fa_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nhrrob_2fa_otp_%' OR option_name LIKE '_site_transient_nhrrob_2fa_otp_%'"

# Clear Cron Jobs
wp cron event delete 'nhrrob_secure_vulnerability_scan_cron'
wp cron event delete 'nhrrob_secure_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nhrrob_secure_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nhrrob_secure_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nhrrob_secure_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nhrrob_secure_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nhrrob_secure_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nhrrob_secure_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nhrrob_secure_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nhrrob_secure_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nhrrob_secure_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nhrrob_secure_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nhrrob_secure_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nhrrob_secure_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nhrrob_secure_2fa_recovery_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nhrrob_secure_2fa_recovery_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nhrrob_secure_2fa_recovery_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nhrrob_secure_2fa_recovery_codes'"
