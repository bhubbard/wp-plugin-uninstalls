#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iwp_client_all_plugins_history'
wp option delete 'iwp_client_all_themes_history'
wp option delete 'iwp_client_wp_version_old'
wp option delete 'is_save_activity_log'
wp option delete 'iwp_webmasters_redirect_table_version'
wp option delete 'wordfence_case'
wp option delete 'IWP-addons_siteid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'IWP_jobdata_%'"
wp option delete 'IWP_backup_status'
wp option delete 'IWP_running_backupID'
wp option delete 'cron'
wp option delete 'IWP_delete_local'
wp option delete 'IWP_include_others_exclude'
wp option delete 'IWP_include_uploads_exclude'
wp option delete 'IWP_default_includes'
wp option delete 'IWP_service'
wp option delete 'IWP_retain'
wp option delete 'IWP_retain_db'
wp option delete 'IWP_default_exclude_tables'
wp option delete 'IWP_semaphore_fd'
wp option delete 'IWP_locked_fd'
wp option delete 'IWP_unlocked_fd'
wp option delete 'IWP_semaphore_d'
wp option delete 'IWP_unlocked_d'
wp option delete 'IWP_locked_d'
wp option delete 'iwp_client_multi_backup_temp_values'
wp option delete 'iwp_multical_db_dump_flag'
wp option delete 'site_url'
wp option delete 'iwp_client_nossl_key'
wp option delete 'iwp_client_public_key'
wp option delete 'iwp_client_action_message_id'
wp option delete 'iwp_client_notifications'
wp option delete 'iwp_client_pageview_alerts'
wp option delete 'iwp_client_user_hit_count'
wp option delete 'iwp_client_backup_tasks'
wp option delete 'iwp_file_list_table_version'
wp option delete 'iwp_client_network_admin_install'
wp option delete 'iwp_client_activate_key'
wp option delete 'bit51_bwps'
wp option delete 'iwp_mu_plugin_version'
wp option delete 'iwp_client_brand'
wp option delete 'iwp_client_maintenace_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%'"
wp option delete 'iwp_staged_site'
wp option delete 'iwp_mmb_maintenance_mode'
wp option delete 'iwp_mmb_maintenance_html'
wp option delete 'iwp_backup_table_version'
wp option delete 'iwp_backup_processed_iterator_version'
wp option delete 'iwp_client_replaced_old_hash_backup_files'
wp option delete 'iwp_client_forcerefresh'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_version'
wp option delete 'spamshield_ubl_cache'
wp option delete 'iwp_mmb_stats_filter'

# Delete Transients
wp transient delete 'IWP_initial_resume_interval'
wp transient delete 'iwp_mu_plugin_loader'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'IWP_backup_resume'
wp cron event delete 'IWP_backup'
wp cron event delete 'IWP_backup_database'
wp cron event delete 'iwp_client_backup_tasks'
wp cron event delete 'iwp_client_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_activities_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_activities_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_activities_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_activities_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_actions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiowps_last_login_time'"
