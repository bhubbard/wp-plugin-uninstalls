-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'bdt_usk_compare_products_page_id', 'woocommerce_cart_redirect_after_add', 'ultimate_post_kit_license_key', 'ultimate_store_kit_active_modules', 'ultimate_store_kit_general_modules', 'ultimate_store_kit_edd_modules', 'woocommerce_ship_to_destination', 'elementor_viewport_lg', 'elementor_viewport_md');
DELETE FROM wp_options WHERE option_name LIKE 'ultimate_store_template_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'ultimate_store_template_sample_post_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'download_term_image', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'download_term_image', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'download_term_image', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'download_term_image', 'thumbnail_id');

