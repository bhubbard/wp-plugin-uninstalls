#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__fluent_security_db_version'
wp option delete '__fls_auth_settings'
wp option delete '__fls_social_auth_settings'
wp option delete '__fls_auth_forms_settings'
wp option delete '__fls_auth_customizer_settings'
wp option delete '_fls_last_digest_sent'
wp option delete 'fls_last_blocked_email_send_time'
wp option delete '__fls_child_sites'
wp option delete 'fa_system_email_settings'
wp option delete '__fls_integrity_settings'
wp option delete '__fls_integrity_ignore_lists'

# Clear Cron Jobs
wp cron event delete 'fluent_auth_daily_tasks'
wp cron event delete 'fluent_auth_hourly_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fls_login_google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fls_login_google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fls_login_google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fls_login_google'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__flsc_temp_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__flsc_temp_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__flsc_temp_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__flsc_temp_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fls_login_github'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fls_login_github'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fls_login_github'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fls_login_github'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fls_login_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fls_login_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fls_login_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fls_login_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
