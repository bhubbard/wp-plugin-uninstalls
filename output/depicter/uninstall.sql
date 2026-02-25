-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_ajax_add_to_cart', 'depicter_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fl_builder_data', '_elementor_data', '_wp_attachment_image_alt', '_wp_page_template', 'use_builder');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fl_builder_data', '_elementor_data', '_wp_attachment_image_alt', '_wp_page_template', 'use_builder');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fl_builder_data', '_elementor_data', '_wp_attachment_image_alt', '_wp_page_template', 'use_builder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fl_builder_data', '_elementor_data', '_wp_attachment_image_alt', '_wp_page_template', 'use_builder');

