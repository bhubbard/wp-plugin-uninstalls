-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2ok_keeplogs', 'ip2ok_disable_notices', 'ip2ok_enable_five_min', 'ip2ok_group_content', 'ip2ok_settings_arr', 'ip2ok_version', 'active_sitewide_plugins', 'ip2ok_groups_content');
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'iptok_existing_photo_id', 'iptok_prod_id_on_ok', 'iptok_ok_product_category', 'iptok_photo_ids', 'rank_math_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'iptok_existing_photo_id', 'iptok_prod_id_on_ok', 'iptok_ok_product_category', 'iptok_photo_ids', 'rank_math_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'iptok_existing_photo_id', 'iptok_prod_id_on_ok', 'iptok_ok_product_category', 'iptok_photo_ids', 'rank_math_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'iptok_existing_photo_id', 'iptok_prod_id_on_ok', 'iptok_ok_product_category', 'iptok_photo_ids', 'rank_math_primary_category');

