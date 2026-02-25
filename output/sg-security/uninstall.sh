#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_security_lock_system_folders'
wp option delete 'sg_security_disable_xml_rpc'
wp option delete 'sgs_activity_log_lifetime'
wp option delete 'sg_security_server_address'
wp option delete 'sg_security_user_ping_services'
wp option delete 'sg_security_user_crawlers'
wp option delete 'sg_security_total_blocked_logins'
wp option delete 'sg_security_total_blocked_visits'
wp option delete 'siteground_email_consent'
wp option delete 'sg_security_weekly_email_timestamp'
wp option delete 'sg_security_notification_emails'
wp option delete 'sg_security_update_timestamp'
wp option delete 'siteground_data_consent'
wp option delete 'siteground_settings_security'
wp option delete 'sg_security_current_version'
wp option delete 'sg_security_login_type'
wp option delete 'sg_security_login_url'
wp option delete 'sg_login_access'
wp option delete 'sg_security_login_redirect'
wp option delete 'sg_security_login_register'
wp option delete 'sg_security_show_signup_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sg_security_%'"
wp option delete 'sg_security_login_attempts'
wp option delete 'sgs_install_1_3_6'
wp option delete 'sgs_install_1_3_7'
wp option delete 'sgs_install_1_4_2'
wp option delete 'sgs_install_1_4_4'
wp option delete 'sgs_install_1_4_7'
wp option delete 'sg_security_version'
wp option delete 'sg_security_disable_activity_log'
wp option delete 'sg_security_delete_readme'
wp option delete 'sg_security_unsuccessful_login'
wp option delete 'sg_security_show_rating'
wp option delete 'sg_security_disable_file_edit'
wp option delete 'sg_security_wp_remove_version'
wp option delete 'sg_security_disable_feed'
wp option delete 'sg_security_xss_protection'
wp option delete 'sg_security_sg2fa'
wp option delete 'sg_security_disable_usernames'
wp option delete 'sg_security_2fa_encryption_file_notice'

# Delete Transients
wp transient delete '_sg_security_installing'

# Clear Cron Jobs
wp cron event delete 'siteground_security_clear_logs_cron'
wp cron event delete 'sgs_email_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgs_additional_codes_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgs_additional_codes_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgs_additional_codes_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgs_additional_codes_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_security_2fa_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_security_2fa_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_security_2fa_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_security_2fa_backup_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_security_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_security_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_security_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_security_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_security_2fa_qr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_security_2fa_qr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_security_2fa_qr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_security_2fa_qr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_security_force_password_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_security_force_password_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_security_force_password_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_security_force_password_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_security_2fa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_security_2fa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_security_2fa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_security_2fa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgs_2fa_dnc_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgs_2fa_dnc_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgs_2fa_dnc_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgs_2fa_dnc_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_security_2fa_configured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_security_2fa_configured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_security_2fa_configured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_security_2fa_configured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgs_2fa_login_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgs_2fa_login_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgs_2fa_login_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgs_2fa_login_nonce'"
