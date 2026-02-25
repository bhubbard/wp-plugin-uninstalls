-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gswc_feed_last_generated', 'gswc_feed_product_count', 'gswc_installed_time', 'gswc_feed_enabled', 'gswc_feed_limit', 'gswc_feed_include_outofstock', 'gswc_feed_exclude_categories', 'gswc_feed_exclude_tags', 'gswc_feed_min_price', 'gswc_feed_max_price', 'gswc_feed_store_name', 'gswc_feed_default_brand', 'gswc_feed_default_condition', 'gswc_feed_title_prefix', 'gswc_feed_title_suffix', 'gswc_feed_desc_prefix', 'gswc_feed_desc_suffix', 'woocommerce_weight_unit', 'gswc_last_action');
DELETE FROM wp_options WHERE option_name LIKE 'gswc_feed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gswc_pro_notice_dismissed', 'gswc_pro_notice_snoozed', 'gswc_widget_positioned', 'meta-box-order_dashboard', '_gswc_gtin', '_gswc_mpn', '_gswc_brand', '_gswc_condition', '_gswc_identifier_exists');
DELETE FROM wp_usermeta WHERE meta_key IN ('gswc_pro_notice_dismissed', 'gswc_pro_notice_snoozed', 'gswc_widget_positioned', 'meta-box-order_dashboard', '_gswc_gtin', '_gswc_mpn', '_gswc_brand', '_gswc_condition', '_gswc_identifier_exists');
DELETE FROM wp_termmeta WHERE meta_key IN ('gswc_pro_notice_dismissed', 'gswc_pro_notice_snoozed', 'gswc_widget_positioned', 'meta-box-order_dashboard', '_gswc_gtin', '_gswc_mpn', '_gswc_brand', '_gswc_condition', '_gswc_identifier_exists');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gswc_pro_notice_dismissed', 'gswc_pro_notice_snoozed', 'gswc_widget_positioned', 'meta-box-order_dashboard', '_gswc_gtin', '_gswc_mpn', '_gswc_brand', '_gswc_condition', '_gswc_identifier_exists');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_gswc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_gswc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_gswc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gswc_%';

