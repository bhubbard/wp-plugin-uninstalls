-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_shop', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_currency_pos', 'api_flexible-product-fields-pro_activated', 'wpdesk_helper_options', 'wpdesk_tracker_skip_flexible_product_fields', 'wpdesk_tracker_notice', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_id', '_category_id', '_tag_id', '_excluded_product_id', '_excluded_category_id', '_excluded_tag_id', '_fields', '_assign_to', '_section');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_id', '_category_id', '_tag_id', '_excluded_product_id', '_excluded_category_id', '_excluded_tag_id', '_fields', '_assign_to', '_section');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_id', '_category_id', '_tag_id', '_excluded_product_id', '_excluded_category_id', '_excluded_tag_id', '_fields', '_assign_to', '_section');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_id', '_category_id', '_tag_id', '_excluded_product_id', '_excluded_category_id', '_excluded_tag_id', '_fields', '_assign_to', '_section');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

