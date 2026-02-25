-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_updates_manager_webhook', 'easy_updates_manager_enable_notices', 'easy_updates_manager_name', 'easy_updates_manager_author', 'easy_updates_manager_url', 'easy_updates_manager_dismiss_dash_notice_until', 'easy_updates_manager_dismiss_eum_notice_until', 'easy_updates_manager_dismiss_page_notice_until', 'easy_updates_manager_dismiss_season_notice_until', 'easy_updates_manager_dismiss_survey_notice_until', 'easy_updates_manager_reset', 'eum_unproven_updates_post_install', 'auto_updater.lock', 'mpsum_log_table_version', 'eum_no_core_email_before', 'active_sitewide_plugins', 'MPSUM', '_disable_updates', 'easy_updates_manager_dismiss_constant_notices', 'eum_email_flood_control', 'eum_active_pre_restore_plugins', 'eum_active_pre_restore_plugins_multisite', 'eum_readable_email_logging_messages', 'eum_readable_email_logging_messages.lock', 'updraft_task_manager_dbversion', 'eum_all_sites_active_plugins', 'eum_all_sites_active_themes', 'eum_plugins_removed_from_directory', 'eum_core_checked', 'eum_themes_checked', 'eum_plugins_checked', 'MPSUM_PLUGINS', 'MPSUM_THEMES', 'update_plugins', 'update_themes', 'update_core', 'eum_plugin_updates', 'eum_theme_updates', 'eum_core_updates', 'mpsum_version_numbers');
DELETE FROM wp_options WHERE option_name LIKE 'easy_updates_manager_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mpsum_dashboard', 'mpsum_items_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('mpsum_dashboard', 'mpsum_items_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('mpsum_dashboard', 'mpsum_items_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mpsum_dashboard', 'mpsum_items_per_page');

