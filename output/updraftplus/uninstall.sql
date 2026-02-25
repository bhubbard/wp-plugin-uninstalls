-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'updraft_oneshotnonce', 'updraft_restore_in_progress', 'updraftplus_product_key', 'external_updates-updraftplus', 'woocommerce_version', 'updraftcentral_client_log', 'menu_items', 'updraftcentral_reporting_reports', 'updraftcentral_reporting_sent_reports', 'allowedthemes', 'auto_update_plugins', 'updraftplus-addons_siteid', 'updraftplus_migrated_site_domain', 'updraftplus_clone_scheduled_removal', 'updraftplus_clone_package_cost', 'updraftplus_clone_removal_warning', 'updraftplus_clone_admin_only_login', 'updraft_interval', 'updraft_interval_database', 'updraft_interval_increments', 'updraft_retain', 'updraft_retain_db', 'updraft_retain_extrarules', 'updraft_encryptionphrase', 'updraft_service', 'updraft_auto_updates', 'updraft_ssl_nossl', 'updraft_log_syslog', 'updraft_ssl_useservercerts', 'updraft_ssl_disableverify', 'updraft_split_every', 'updraft_dir', 'updraft_report_warningsonly', 'updraft_report_wholebackup', 'updraft_report_dbbackup', 'updraft_autobackup_default', 'updraft_delete_local', 'updraft_debug_mode', 'updraft_extradbs', 'updraft_backupdb_nonwp', 'updraft_include_plugins', 'updraft_include_themes', 'updraft_include_uploads', 'updraft_include_others', 'updraft_include_wpcore', 'updraft_include_wpcore_exclude', 'updraft_include_more', 'updraft_include_more_path', 'updraft_include_uploads_exclude');
DELETE FROM wp_options WHERE option_name IN ('updraft_include_others_exclude', 'updraft_starttime_files', 'updraft_starttime_db', 'updraft_startday_files', 'updraft_startday_db', '_elementor_global_css', 'elementor-custom-breakpoints-files', 'cctm_data', 'updraft_task_manager_dbversion', 'updraft_task_manager_plugins', 'update_plugins', 'update_themes', 'update_core', 'updraft_initial_resume_interval', 'udvault_last_config', 'updraftvault_quota_numeric', 'updraftvault_quota_text', 'doing_cron');
DELETE FROM wp_options WHERE option_name LIKE 'updraft_jobdata_%';
DELETE FROM wp_options WHERE option_name LIKE 'updraftplus_semaphore_%';
DELETE FROM wp_options WHERE option_name LIKE 'updraft_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dashboard_news';
DELETE FROM wp_options WHERE option_name LIKE '%_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id', 'uc_allow_auto_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id', 'uc_allow_auto_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id', 'uc_allow_auto_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id', 'uc_allow_auto_login');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_dashboard_news';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_dashboard_news';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_dashboard_news';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_dashboard_news';

