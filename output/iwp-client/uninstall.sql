-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iwp_client_all_plugins_history', 'iwp_client_all_themes_history', 'iwp_client_wp_version_old', 'is_save_activity_log', 'iwp_webmasters_redirect_table_version', 'wordfence_case', 'IWP-addons_siteid', 'IWP_backup_status', 'IWP_running_backupID', 'cron', 'IWP_delete_local', 'IWP_include_others_exclude', 'IWP_include_uploads_exclude', 'IWP_default_includes', 'IWP_service', 'IWP_retain', 'IWP_retain_db', 'IWP_default_exclude_tables', 'IWP_semaphore_fd', 'IWP_locked_fd', 'IWP_unlocked_fd', 'IWP_semaphore_d', 'IWP_unlocked_d', 'IWP_locked_d', 'iwp_client_multi_backup_temp_values', 'iwp_multical_db_dump_flag', 'site_url', 'iwp_client_nossl_key', 'iwp_client_public_key', 'iwp_client_action_message_id', 'iwp_client_notifications', 'iwp_client_pageview_alerts', 'iwp_client_user_hit_count', 'iwp_client_backup_tasks', 'iwp_file_list_table_version', 'iwp_client_network_admin_install', 'iwp_client_activate_key', 'bit51_bwps', 'iwp_mu_plugin_version', 'iwp_client_brand', 'iwp_client_maintenace_mode', 'iwp_staged_site', 'iwp_mmb_maintenance_mode', 'iwp_mmb_maintenance_html', 'iwp_backup_table_version', 'iwp_backup_processed_iterator_version', 'iwp_client_replaced_old_hash_backup_files', 'iwp_client_forcerefresh', 'woocommerce_db_version', 'woocommerce_version');
DELETE FROM wp_options WHERE option_name IN ('spamshield_ubl_cache', 'iwp_mmb_stats_filter', 'IWP_initial_resume_interval', 'iwp_mu_plugin_loader', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'IWP_jobdata_%';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login_time', 'aiowps_last_login_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login_time', 'aiowps_last_login_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login_time', 'aiowps_last_login_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login_time', 'aiowps_last_login_time');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_action';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_action';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_action';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_action';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_activities_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_activities_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_activities_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_activities_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_actions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_actions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_actions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_actions';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_details';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_details';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_details';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_details';

