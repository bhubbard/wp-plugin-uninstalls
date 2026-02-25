-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('medium_large_size_w', 'medium_large_size_h', 'uncannyautomator_source', 'storeagent_installed_by', 'wwp_installed_by', 'acfw_installed_by', 'wc_featured_products', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_unlock_related_orders';
DELETE FROM wp_options WHERE option_name LIKE '%_in_progress';
DELETE FROM wp_options WHERE option_name LIKE '%_autocomplete_order';
DELETE FROM wp_options WHERE option_name LIKE '%_unlock_variations';
DELETE FROM wp_options WHERE option_name LIKE '%_show_used_coupons';
DELETE FROM wp_options WHERE option_name LIKE '%_change_add_to_cart';
DELETE FROM wp_options WHERE option_name LIKE '%_change_add_to_cart_0';
DELETE FROM wp_options WHERE option_name LIKE '%_add_empty_cart_button';
DELETE FROM wp_options WHERE option_name LIKE '%_adjust_number_products_on_archive';
DELETE FROM wp_options WHERE option_name LIKE '%_adjust_number_products_on_archive_0';
DELETE FROM wp_options WHERE option_name LIKE '%_delete_images_on_product_delete';
DELETE FROM wp_options WHERE option_name LIKE '%_place_order_button';
DELETE FROM wp_options WHERE option_name LIKE '%_place_order_button_0';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_unit_pricing';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_email', '_woo_st_unit_name', '_woo_st_total_volume', '_stock_status', '_wc_average_rating', '_wc_rating_count', '_wc_review_count', '_virtual', '_featured', '_sku', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_email', '_woo_st_unit_name', '_woo_st_total_volume', '_stock_status', '_wc_average_rating', '_wc_rating_count', '_wc_review_count', '_virtual', '_featured', '_sku', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_email', '_woo_st_unit_name', '_woo_st_total_volume', '_stock_status', '_wc_average_rating', '_wc_rating_count', '_wc_review_count', '_virtual', '_featured', '_sku', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_email', '_woo_st_unit_name', '_woo_st_total_volume', '_stock_status', '_wc_average_rating', '_wc_rating_count', '_wc_review_count', '_virtual', '_featured', '_sku', 'thumbnail_id');

