-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eis_register_interfaces', 'eis_interfaces_default', 'eis_interfaces_shortcode', 'eis_register_post_types', 'eis_version');
DELETE FROM wp_options WHERE option_name LIKE '%_eis_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('an_item_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('an_item_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('an_item_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('an_item_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_eis_options';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_eis_options';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_eis_options';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_eis_options';

