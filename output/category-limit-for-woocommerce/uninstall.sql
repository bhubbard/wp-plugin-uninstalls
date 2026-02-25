-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_wcl_settings_limit', 'wc_settings_wcl_settings_exclude', 'wc_settings_wcl_settings_label');

