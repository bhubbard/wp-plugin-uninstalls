-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2y_keeplogs', 'ip2y_disable_notices', 'ip2y_group_content', 'ip2y_settings_arr', 'ip2y_version', 'ip2y_groups_content', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';
DELETE FROM wp_options WHERE option_name LIKE '%_keeplogs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ip2y_length', '_ip2y_width', '_ip2y_height', '_ip2y_weight', '_ip2y_tags', '_ip2y_market_sku', '_ip2y_prod_id_on_yandex', '_ip2y_market_sku_on_yandex', '_ip2y_market_category_id_on_yandex', '_ip2y_prod_archive_status', 'rank_math_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ip2y_length', '_ip2y_width', '_ip2y_height', '_ip2y_weight', '_ip2y_tags', '_ip2y_market_sku', '_ip2y_prod_id_on_yandex', '_ip2y_market_sku_on_yandex', '_ip2y_market_category_id_on_yandex', '_ip2y_prod_archive_status', 'rank_math_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ip2y_length', '_ip2y_width', '_ip2y_height', '_ip2y_weight', '_ip2y_tags', '_ip2y_market_sku', '_ip2y_prod_id_on_yandex', '_ip2y_market_sku_on_yandex', '_ip2y_market_category_id_on_yandex', '_ip2y_prod_archive_status', 'rank_math_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ip2y_length', '_ip2y_width', '_ip2y_height', '_ip2y_weight', '_ip2y_tags', '_ip2y_market_sku', '_ip2y_prod_id_on_yandex', '_ip2y_market_sku_on_yandex', '_ip2y_market_category_id_on_yandex', '_ip2y_prod_archive_status', 'rank_math_primary_category');

