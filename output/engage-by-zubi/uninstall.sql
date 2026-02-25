-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebz_tracker_key', 'ebz_user_token', 'etKey', 'euKey', 'ebz_use_square_img', 'ebz_store_name', 'ebz_is_disabled', 'ebz_is_debug', 'ebz_img_size', 'ebz_prod_rec_position', 'ebz_cat_rec_position', 'ebz_start_rec_position', 'ebz_checkout_rec_position', 'ebz_search_rec_position', 'ebz_cart_rec_position', 'ebz_minicart_rec_position', 'ebz_css_prod_rec_display', 'ebz_css_cat_rec_display', 'ebz_css_start_rec_display', 'ebz_css_checkout_rec_display', 'ebz_css_search_rec_display', 'ebz_css_cart_rec_display', 'ebz_css_minicart_rec_display', 'woocommerce_currency', 'ebz_woocommerce_before_single_product', 'ebz_woocommerce_before_single_product_summary', 'ebz_woocommerce_product_thumbnails', 'ebz_woocommerce_single_product_summary', 'ebz_woocommerce_before_add_to_cart_form', 'ebz_woocommerce_before_variations_form', 'ebz_woocommerce_before_add_to_cart_button', 'ebz_woocommerce_single_variation', 'ebz_woocommerce_after_single_variation', 'ebz_woocommerce_after_add_to_cart_button', 'ebz_woocommerce_after_variations_form', 'ebz_woocommerce_after_add_to_cart_form', 'ebz_woocommerce_product_meta_start', 'ebz_woocommerce_product_meta_end', 'ebz_woocommerce_share', 'ebz_woocommerce_after_single_product_summary', 'ebz_woocommerce_after_single_product');
DELETE FROM wp_options WHERE option_name LIKE 'ebz_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hook';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode';
DELETE FROM wp_options WHERE option_name LIKE '%_default';
DELETE FROM wp_options WHERE option_name LIKE '%_name';

