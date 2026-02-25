-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_review_rating', 'woocommerce_enable_ajax_add_to_cart', 'default_product_cat', 'woocommerce_default_catalog_orderby');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sample_product', '_custom_woo_builder_content', 'thumbnail_id', '_elementor_page_settings', '_template_type', '_custom_woo_template', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sample_product', '_custom_woo_builder_content', 'thumbnail_id', '_elementor_page_settings', '_template_type', '_custom_woo_template', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sample_product', '_custom_woo_builder_content', 'thumbnail_id', '_elementor_page_settings', '_template_type', '_custom_woo_template', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sample_product', '_custom_woo_builder_content', 'thumbnail_id', '_elementor_page_settings', '_template_type', '_custom_woo_template', '_elementor_template_type', '_elementor_edit_mode');

