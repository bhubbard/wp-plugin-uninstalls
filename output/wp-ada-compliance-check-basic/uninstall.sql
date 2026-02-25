-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ada_compliance_basic_posttypes', 'wp_ada_compliance_basic_import_inprocess', 'wp_ada_compliance_basic_enablewave', 'wp_ada_compliance_basic_retain_settings', 'wp_ada_compliance_basic_scan_rules', 'wp_ada_compliance_basic_ignore_scan_rules', 'wp_ada_compliance_basic_version', 'wp_ada_compliance_basic_rescan_required', 'wp_ada_compliance_basic_settingsusers', 'wp_ada_compliance_basic_report_filtered_errors', 'wp_ada_compliance_errors_per_page', 'wp_ada_compliance_basic_cron_count', 'wp_ada_compliance_basic_notification_frequency', 'wp_ada_compliance_strip_autoplay', 'wp_ada_compliance_basic_background_color', 'wp_ada_compliance_basic_forground_color', 'wp_ada_compliance_basic_attachmenttitles', 'wp_ada_compliance_basic_starting_h_level', 'wp_ada_compliance_basic_foreground_color', 'wp_ada_compliance_basic_notification_email', 'wp_ada_compliance_basic_filter_content', 'wp_ada_compliance_basic_full_scan_post_count', 'wp_ada_compliance_basic_use_accessibility_widget', 'wp_ada_compliance_basic_use_browser_extension', 'wp_ada_compliance_basic_errors_per_page', 'wp_ada_compliance_basic_language_code', 'wp_ada_compliance_basic_scan_increment');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

