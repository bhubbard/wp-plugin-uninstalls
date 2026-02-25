#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdev-frash'
wp option delete 'wpmudev_apikey'
wp option delete 'allowedthemes'
wp option delete 'wp_defender_shown_activator'
wp option delete 'wd_show_new_feature'
wp option delete 'wd_hardener_settings'
wp option delete 'wd_db_version'
wp option delete 'wp_defender_is_activated'
wp option delete 'wd_audit_fetch_checkpoint'
wp option delete 'wpdef_clear_schedule_firewall_cleanup_temp_blocklist_ips'
wp option delete 'jetpack_active_modules'
wp option delete 'site_admins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'defender_security_tweaks_%'"
wp option delete 'wpdef_ip_blocklist_sync_last_run_time'
wp option delete 'wp_defender_onboarding_step'
wp option delete 'wp_defender_is_free_activated'
wp option delete 'wd_nofresh_install'
wp option delete 'wphb_settings'
wp option delete 'wp_defender'
wp option delete 'wpdefender_config_clear_active_tag'
wp option delete 'wpdefender_preset_configs_transient_time'
wp option delete 'wp_defender_config_default'
wp option delete 'disable-xml-rpc'
wp option delete 'wd_audit_cached'
wp option delete 'wd_show_ip_detection_notice'

# Delete Transients
wp transient delete 'wpdef_antibot_global_firewall_db_blocklist_count'
wp transient delete 'update_core'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wd-rp-%' OR option_name LIKE '_site_transient_wd-rp-%'"
wp transient delete 'def_waf_status'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'defender_hub_sync'
wp cron event delete 'wpdef_fetch_global_ip_list'
wp cron event delete 'wpdef_rotate_bot_trap_secret_hash'
wp cron event delete 'wpdef_confirm_antibot_toggle_on_hosting'
wp cron event delete 'wpdef_antibot_global_firewall_fetch_blocklist'
wp cron event delete 'firewall_cleanup_temp_blocklist_ips'
wp cron event delete 'wpdef_smart_ip_detection_ping'
wp cron event delete 'firewall_clean_up_logs'
wp cron event delete 'audit_sync_events'
wp cron event delete 'audit_clean_up_logs'
wp cron event delete 'wdf_maybe_send_report'
wp cron event delete 'wp_defender_clear_logs'
wp cron event delete 'wpdef_sec_key_gen'
wp cron event delete 'wpdef_clear_scan_logs'
wp cron event delete 'wpdef_log_rotational_delete'
wp cron event delete 'wpdef_update_geoip'
wp cron event delete 'wpdef_quarantine_delete_expired'
wp cron event delete 'wpdef_firewall_clean_up_lockout'
wp cron event delete 'wpdef_firewall_send_compact_logs_to_api'
wp cron event delete 'wpdef_firewall_fetch_trusted_proxy_preset_ips'
wp cron event delete 'wpdef_firewall_clean_up_unlockout'
wp cron event delete 'wpdef_firewall_whitelist_server_public_ip'
wp cron event delete 'wpdef_rotate_malicious_bot_secret_hash'
wp cron event delete 'lockoutReportCron'
wp cron event delete 'auditReportCron'
wp cron event delete 'cleanUpOldLog'
wp cron event delete 'scanReportCron'
wp cron event delete 'tweaksSendNotification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_shortcuts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_shortcuts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_shortcuts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_shortcuts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_ssl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_ssl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_ssl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_ssl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wd_last_password_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wd_last_password_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wd_last_password_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wd_last_password_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wd_2fa_attempt_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wd_2fa_attempt_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wd_2fa_attempt_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wd_2fa_attempt_%'"
