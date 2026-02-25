-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2vk_keeplogs', 'ip2vk_disable_notices', 'ip2vk_group_content', 'ip2vk_settings_arr', 'ip2vk_version', 'active_sitewide_plugins', 'ip2vk_groups_content');
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';
DELETE FROM wp_options WHERE option_name LIKE '%_keeplogs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ip2vk_vk_category_id', '_ts_gtin', '_ip2vk_prod_id_on_vk', '_ip2vk_existing_photo_id', '_ip2vk_vk_product_category', 'thumbnail_id', 'rank_math_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('ip2vk_vk_category_id', '_ts_gtin', '_ip2vk_prod_id_on_vk', '_ip2vk_existing_photo_id', '_ip2vk_vk_product_category', 'thumbnail_id', 'rank_math_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('ip2vk_vk_category_id', '_ts_gtin', '_ip2vk_prod_id_on_vk', '_ip2vk_existing_photo_id', '_ip2vk_vk_product_category', 'thumbnail_id', 'rank_math_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ip2vk_vk_category_id', '_ts_gtin', '_ip2vk_prod_id_on_vk', '_ip2vk_existing_photo_id', '_ip2vk_vk_product_category', 'thumbnail_id', 'rank_math_primary_category');

