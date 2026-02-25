#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mainwp_child_connected_admin'
wp option delete 'mainwp_child_pubkey'
wp option delete 'mainwp_child_actions_saved_data'
wp option delete 'mainwp_child_actions_data_checked'
wp option delete 'mainwp_child_actions_saved_number_of_days'
wp option delete 'wp_mainwp_child_actions_plugins_to_delete'
wp option delete 'mainwp_child_ignored_nonmainwp_actions'
wp option delete 'mainwp_backupbuddy_hide_plugin'
wp option delete '_transient_doing_cron'
wp option delete 'mainwp_backupwordpress_hide_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hmbkp_schedule_%'"
wp option delete 'mainwp_backwpup_hide_plugin'
wp option delete 'backwpup_cfg_logfolder'
wp option delete 'backwpup_messages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'backwpup_cfg_%'"
wp option delete 'license_status'
wp option delete 'license_instance_key'
wp option delete 'license_api_key'
wp option delete 'license_product_id'
wp option delete 'backwpup_onboarding'
wp option delete 'backwpup_global_job_id'
wp option delete 'backwpup_backup_files_job_id'
wp option delete 'backwpup_backup_database_job_id'
wp option delete 'mainwp_child_branding_settings'
wp option delete 'mainwp_child_auto_purge_cache'
wp option delete 'mainwp_child_cloud_flair_enabled'
wp option delete 'mainwp_cloudflair_email'
wp option delete 'mainwp_child_cloudflair_key'
wp option delete 'mainwp_cloudflair_key'
wp option delete 'mainwp_child_cloudflare_use_token'
wp option delete 'mainwp_child_cloudflare_token'
wp option delete 'mainwp_cache_control_last_purged'
wp option delete 'mainwp_cache_control_cache_solution'
wp option delete 'mainwp_cache_control_log'
wp option delete 'site_url'
wp option delete 'woocommerce_db_version'
wp option delete 'html-regression-track-admin-assets'
wp option delete 'mainwp_ithemes_hide_plugin'
wp option delete 'itsec_active_modules'
wp option delete 'mainwp_child_itsec_defaults_applied'
wp option delete 'itsec_temp_whitelist_ip'
wp option delete 'itsec_ipcheck'
wp option delete 'mainwp_child_jetpack_protect_hide_plugin'
wp option delete 'mainwp_child_jetpack_scan_hide_plugin'
wp option delete 'mainwp_linkschecker_ext_enabled'
wp option delete 'mainwp_linkschecker_hide_plugin'
wp option delete 'wsblc_options'
wp option delete 'mainwp_maintenance_opt_alert_404'
wp option delete 'mainwp_maintenance_opt_alert_404_email'
wp option delete 'mainwp_security'
wp option delete 'mainwp_ext_code_snippets'
wp option delete 'mainwp_pagespeed_hide_plugin'
wp option delete 'mainwp_child_pagespeed_count_checking'
wp option delete 'gpagespeedi_options'
wp option delete 'mainwp_pw_max_age_days'
wp option delete 'mainwp_pw_due_soon_days'
wp option delete 'mainwp_pw_due_soon_message'
wp option delete 'mainwp_pw_overdue_message'
wp option delete 'mainwp_pw_show_notices_to'
wp option delete 'mainwp_pw_policy_enabled_at'
wp option delete 'mainwp_child_plugintheme_days_outdate'
wp option delete 'mainwp_child_plugin_version'
wp option delete 'mainwp_wp_staging_ext_enabled'
wp option delete 'mainwp_wp_staging_hide_plugin'
wp option delete 'wpstg_settings'
wp option delete 'wpstg_existing_clones_beta'
wp option delete 'mainwp_child_auth'
wp option delete 'mainwp_child_ignored_changes_logs'
wp option delete 'mainwp_child_pingnonce'
wp option delete 'mainwp_child_settings_sync_data'
wp option delete 'mainwp_child_sync_users_number'
wp option delete 'mainwp_child_recent_number'
wp option delete 'mainwp_child_pluginDir'
wp option delete 'mainwp_time_capsule_ext_enabled'
wp option delete 'mainwp_time_capsule_hide_plugin'
wp option delete 'mainwp_premium_updates'
wp option delete 'updraft_oneshotnonce'
wp option delete 'cron'
wp option delete 'mainwp_updraftplus_hide_plugin'
wp option delete 'mainwp_child_wpvulndb_token'
wp option delete 'mainwp_child_vuln_nvd_checking_list'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'mainwp_wordfence_hide_plugin'
wp option delete 'mainwp_wordfence_lastcheck_scan'
wp option delete 'mainwp_child_wordfence_cron_time'
wp option delete 'wordfence_syncAttackDataAttempts'
wp option delete 'mainwp_wprocket_hide_plugin'
wp option delete '_transient_wpr_dynamic_lists_delayjs'
wp option delete 'active_sitewide_plugins'
wp option delete 'mainwp_child_update_version'
wp option delete 'mainwp_child_subpages '
wp option delete 'mainwp_child_ttl_active_unconnected_site'
wp option delete 'mainwp_child_lasttime_not_connected'
wp option delete 'mainwp_creport_first_time_activated'
wp option delete 'mainwp_child_nonce'
wp option delete 'mainwp_child_clone_sites'
wp option delete 'mainwp_temp_clone_admin'
wp option delete 'mainwp_child_clone_from_server_last_folder'
wp option delete 'mainwp_child_restore_permalink'
wp option delete 'mainwp_ajaxposts'
wp option delete 'mainwp_child_clone_permalink'
wp option delete 'mainwp_temp_clone_plugins'
wp option delete 'mainwp_temp_clone_themes'
wp option delete 'mainwp_child_just_clone_admin'
wp option delete 'mainwp_child_openssl_sign_algo'
wp option delete 'mainwp_child_recent_custom_cpt_ids_limit'
wp option delete 'mainwp_child_uniqueId'
wp option delete 'pressable_site_id'
wp option delete 'mainwp_ext_snippets_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mainwp_lasttime_backup_%'"
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'nav_menu_options'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pb_backupbuddy_stop_backup-%' OR option_name LIKE '_site_transient_pb_backupbuddy_stop_backup-%'"
wp transient delete 'pb_backupbuddy_malwarescan'
wp transient delete 'backupbuddy_live_jump'
wp transient delete 'hmbkp_schedules'
wp transient delete 'backwpup_cookies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_old_password_hash_%' OR option_name LIKE '_site_transient_mainwp_old_password_hash_%'"
wp transient delete 'mainwp_update_themes_cached'
wp transient delete 'mainwp_update_plugins_cached'
wp transient delete 'mainwp_child_total_size'
wp transient delete 'health-check-site-status-result'
wp transient delete 'update_themes'
wp transient delete 'update_plugins'
wp transient delete 'updraftvault_quota_text'
wp transient delete 'udvault_last_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_udaddons_connect_%' OR option_name LIKE '_site_transient_udaddons_connect_%'"
wp transient delete 'mainwp_child_trans_wpvulndb_tk'
wp transient delete 'mainwp_child_trans_nvd_nist_tk'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_vulnche_trans_plug_%' OR option_name LIKE '_site_transient_mainwp_vulnche_trans_plug_%'"
wp transient delete 'mainwp_vulnche_trans_wp_json'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_vulnche_trans_theme_%' OR option_name LIKE '_site_transient_mainwp_vulnche_trans_theme_%'"
wp transient delete 'wpr_dynamic_lists_delayjs'
wp transient delete 'rocket_clear_cache'
wp transient delete 'rocket_preload_errors'
wp transient delete 'rocket_performance_hints_clear_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_clone-full-backup-%' OR option_name LIKE '_site_transient_clone-full-backup-%'"

# Clear Cron Jobs
wp cron event delete 'backupbuddy_cron'
wp cron event delete 'backwpup_cron'
wp cron event delete 'mainwp_child_pagespeed_cron_check'
wp cron event delete 'googlepagespeedinsightschecknow'
wp cron event delete 'updraft_backup'
wp cron event delete 'updraft_backup_database'
wp cron event delete 'updraft_backup_resume'
wp cron event delete 'mainwp_child_cron_plugin_vuln_nvd_continue_force_check'
wp cron event delete 'mainwp_child_cron_plugin_vuln_nvd_continue_check'
wp cron event delete 'mainwp_child_wordfence_cron_scan'
wp cron event delete 'rocket_update_dynamic_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mainwp_last_password_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mainwp_last_password_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mainwp_last_password_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mainwp_last_password_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opengraph-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opengraph-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opengraph-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opengraph-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rocket_boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rocket_boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rocket_boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rocket_boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
