-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_product_xml_feeds_enabled', 'alg_products_xml_feeds_security_key', 'alg_products_xml_php_memory_limit', 'alg_products_xml_php_time_limit', 'alg_products_xml_raw_input', 'alg_products_xml_query_block_size', 'alg_product_xml_feeds_version', 'alg_products_xml_ajax_load_filtering_option', 'alg_products_xml_ajax_feed_creation_option', 'woocommerce_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_turn_off_wp_schedule_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_enabled_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_create_products_xml_cron_time_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_time_file_created_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_lang_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_header_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_footer_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_variation_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_text_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_orderby_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_order_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_products_incl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_products_excl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_cats_incl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_cats_excl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_tags_incl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_tags_excl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_scope_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_variable_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_offset_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_total_products_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_create_text_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_tags_if_empty_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_product_type_include_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_custom_meta_incl_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_enabled_branding_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_products_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_text_file_path_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_file_path_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_use_home_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_feed_title_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manage_stock', '_stock_status', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manage_stock', '_stock_status', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manage_stock', '_stock_status', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manage_stock', '_stock_status', '_sku');

