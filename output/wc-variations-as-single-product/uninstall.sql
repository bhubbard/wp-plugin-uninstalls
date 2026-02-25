-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wvasp_enable_variations_as_product', 'wvasp_disable_shop_page_single_variation', 'wvasp_disable_category_page_single_variation', 'wvasp_disable_tag_page_single_variation', 'wvasp_disable_search_page_single_variation', 'wvasp_hide_parent_products', 'wvasp_exclude_parent_products_forcefully', 'wvasp_exclude_category_fields', 'wvasp_exclude_child_category_fields', 'wvasp_exclude_tag_fields', 'wvasp_legacy_product_exclude', 'wvasp_batch_processing_amount');
DELETE FROM wp_options WHERE option_name LIKE '%_insights_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_tracking_time';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_skip';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_previously_skip';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wvasp_single_exclude_variation', '_wvasp_single_variation_title', '_wvasp_exclude', '_wvasp_single_exclude_varations', '_wvasp_single_hide_parent_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wvasp_single_exclude_variation', '_wvasp_single_variation_title', '_wvasp_exclude', '_wvasp_single_exclude_varations', '_wvasp_single_hide_parent_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wvasp_single_exclude_variation', '_wvasp_single_variation_title', '_wvasp_exclude', '_wvasp_single_exclude_varations', '_wvasp_single_hide_parent_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wvasp_single_exclude_variation', '_wvasp_single_variation_title', '_wvasp_exclude', '_wvasp_single_exclude_varations', '_wvasp_single_hide_parent_product');

