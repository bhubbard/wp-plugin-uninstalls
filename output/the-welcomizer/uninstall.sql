-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twiz_override_network_settings', 'twiz_admin', 'twiz_db_version', 'twiz_global_status', 'twiz_cookie_js_status', 'twiz_network_activated', 'twiz_toggle', 'twiz_order_by', 'twiz_skin', 'twiz_bullet', 'twiz_setting_menu', 'twiz_hscroll_status', 'twiz_privacy_question_answered', 'twiz_sections', 'twiz_hardsections', 'twiz_export_filter', 'twiz_library', 'twiz_multi_sections', 'twiz_library_dir', 'ms_files_rewriting');

