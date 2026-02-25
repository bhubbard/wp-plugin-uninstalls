-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcsc_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsc_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcsc_chart_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcsc_charts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('type', 'terms', 'combined', 'above_text', 'under_text', 'table_data', 'wpcsc_active', 'wpcsc_size_charts');
DELETE FROM wp_usermeta WHERE meta_key IN ('type', 'terms', 'combined', 'above_text', 'under_text', 'table_data', 'wpcsc_active', 'wpcsc_size_charts');
DELETE FROM wp_termmeta WHERE meta_key IN ('type', 'terms', 'combined', 'above_text', 'under_text', 'table_data', 'wpcsc_active', 'wpcsc_size_charts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('type', 'terms', 'combined', 'above_text', 'under_text', 'table_data', 'wpcsc_active', 'wpcsc_size_charts');

