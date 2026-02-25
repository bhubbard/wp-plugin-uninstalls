#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secupress_active_plugins'
wp option delete 'secupress_active_themes'
wp option delete 'secupress_default_role'
wp option delete 'active_sitewide_plugins'
wp option delete 'secupress_step1_report'
wp option delete 'secupress_scan_phpversion'
wp option delete 'secupress_scan_wp_config'
wp option delete 'secupress_captcha_keys'
wp option delete 'registration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'secupress_active_submodule_%'"
wp option delete 'sfml'
wp option delete 'sfml_version'
wp option delete 'movelogin_users-login_settings'
wp option delete 'movelogin_settings'
wp option delete 'movelogin_active_submodule_move-login'
wp option delete 'secupress_antispam_settings'
wp option delete 'secupress_firewall_settings'
wp option delete 'secupress_geoip_installed'
wp option delete 'secupress_settings'

# Delete Transients
wp transient delete 'secupress_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_secupress_unlock_admin_key-%' OR option_name LIKE '_site_transient_secupress_unlock_admin_key-%'"
wp transient delete 'secupress-deactivation-form'
wp transient delete 'settings_errors'
wp transient delete 'secupress_updates_message'
wp transient delete 'secupress-common'
wp transient delete 'secupress_unlock_admin_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_secupress-notices-%' OR option_name LIKE '_site_transient_secupress-notices-%'"
wp transient delete 'secupress-notices-0'
wp transient delete 'secupress_sideads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'secupress_is_https_supported'
wp transient delete 'secupress_scan_subscription_token'
wp transient delete 'secupress_registration_test'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_secupress_plugins_api_%' OR option_name LIKE '_site_transient_secupress_plugins_api_%'"
wp transient delete 'secupress-test-hostname'
wp transient delete 'secupress_active_submodules'
wp transient delete 'secupress_ssl_status'
wp transient delete 'secupress_ssl_status_domain'

# Clear Cron Jobs
wp cron event delete 'secupress_bad_plugins'
wp cron event delete 'secupress_bad_themes'
wp cron event delete 'secupress_license_check'
wp cron event delete 'secupress_malware_files'
wp cron event delete 'secupress_cleanup_leftovers'
wp cron event delete 'secupress_bad_themes_maybe_do_checks'
wp cron event delete 'secupress_bad_plugins_maybe_do_checks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secupress_attacks_widget_chart_months'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secupress_attacks_widget_chart_months'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secupress_attacks_widget_chart_months'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secupress_attacks_widget_chart_months'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secupress_migration_congrats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secupress_migration_congrats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secupress_migration_congrats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secupress_migration_congrats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secupress-password-needs-rehash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secupress-password-needs-rehash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secupress-password-needs-rehash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secupress-password-needs-rehash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%secupress_antiphishingcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%secupress_antiphishingcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%secupress_antiphishingcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%secupress_antiphishingcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secupress_log_http_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secupress_log_http_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secupress_log_http_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secupress_log_http_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secupress_limitloginattempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secupress_limitloginattempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secupress_limitloginattempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secupress_limitloginattempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'secupress-bad-mx-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'secupress-bad-mx-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'secupress-bad-mx-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'secupress-bad-mx-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secupress-blind-password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secupress-blind-password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secupress-blind-password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secupress-blind-password'"
