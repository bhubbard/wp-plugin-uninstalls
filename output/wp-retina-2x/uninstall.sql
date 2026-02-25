-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_css_print_method', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news', 'wr2x_flush_rules', 'wr2x_issues', 'wr2x_ignores', 'wr2x_optimize_issues');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'wr2x_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wr2x_optimize', '_media_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wr2x_optimize', '_media_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wr2x_optimize', '_media_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wr2x_optimize', '_media_version');

