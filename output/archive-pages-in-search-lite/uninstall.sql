-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mkapis_lite_settings_options', 'mkapis_lite_archive_names', 'mkapis_lite_all_archive_names', 'mkapis_lite_old_term_names');

