-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('updraftcentral_dbversion', 'updraftcentral_options', 'woocommerce_myaccount_page_id', 'updraft_task_manager_dbversion', 'updraft_task_manager_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_lock', 'updraftcentral_editor_settings', 'updraftcentral_dashboard_backup_choice', 'updraftcentral_dashboard_load_setting', 'updraftcentral_dashboard_user_defined_timeout', 'updraftcentral_dashboard_shortcut_status', 'updraftcentral_dashboard_shortcuts', 'updraftcentral_dashboard_site_order', 'updraftcentral_modules_visibility', 'updraftcentral_dashboard_last_loaded', 'uc_cron_sites_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_lock', 'updraftcentral_editor_settings', 'updraftcentral_dashboard_backup_choice', 'updraftcentral_dashboard_load_setting', 'updraftcentral_dashboard_user_defined_timeout', 'updraftcentral_dashboard_shortcut_status', 'updraftcentral_dashboard_shortcuts', 'updraftcentral_dashboard_site_order', 'updraftcentral_modules_visibility', 'updraftcentral_dashboard_last_loaded', 'uc_cron_sites_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_lock', 'updraftcentral_editor_settings', 'updraftcentral_dashboard_backup_choice', 'updraftcentral_dashboard_load_setting', 'updraftcentral_dashboard_user_defined_timeout', 'updraftcentral_dashboard_shortcut_status', 'updraftcentral_dashboard_shortcuts', 'updraftcentral_dashboard_site_order', 'updraftcentral_modules_visibility', 'updraftcentral_dashboard_last_loaded', 'uc_cron_sites_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_lock', 'updraftcentral_editor_settings', 'updraftcentral_dashboard_backup_choice', 'updraftcentral_dashboard_load_setting', 'updraftcentral_dashboard_user_defined_timeout', 'updraftcentral_dashboard_shortcut_status', 'updraftcentral_dashboard_shortcuts', 'updraftcentral_dashboard_site_order', 'updraftcentral_modules_visibility', 'updraftcentral_dashboard_last_loaded', 'uc_cron_sites_processed');

