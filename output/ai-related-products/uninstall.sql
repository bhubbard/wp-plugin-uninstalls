-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('st_woo_ai_rel_products_replace_single_rel_products', 'st_woo_ai_rel_products_cart_page_rel_products', 'st_woo_ai_rel_products_cart_ref_single_rel_products', 'st_woo_ai_rel_products_number_single_rel_products', 'st_woo_ai_rel_products_column_single_rel_products', 'st_woo_ai_rel_products_label_single_rel_products', 'st_woo_ai_rel_products_ordered_ref_single_rel_products', 'st_woo_ai_rel_products_description_shortcode');

