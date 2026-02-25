-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poi_acf_general_settings', 'active_sitewide_plugins', 'lou_acf_wc_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rule', 'poi_page_rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('rule', 'poi_page_rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('rule', 'poi_page_rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rule', 'poi_page_rule');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'poi_acf_field_data-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'poi_acf_field_data-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'poi_acf_field_data-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'poi_acf_field_data-%';

