-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mblzr_smartphone_theme', 'mblzr_enabled_side_module_themes_settings', 'mblzr_do_log', 'mblzr_do_log_date');

