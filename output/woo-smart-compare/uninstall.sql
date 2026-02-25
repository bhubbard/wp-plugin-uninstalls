-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosc_settings', 'woosc_localization', 'wpclever_plugins', 'woosc_get_product_meta_keys');
DELETE FROM wp_options WHERE option_name LIKE 'woosc_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'woosc_hash_%';
DELETE FROM wp_options WHERE option_name LIKE 'woosc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woosc_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('woosc_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('woosc_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woosc_products');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woosc_fields_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woosc_fields_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woosc_fields_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woosc_fields_%';

