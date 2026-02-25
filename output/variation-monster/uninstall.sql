-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('variable_all_checked', 'varimo_review_dismissed', 'QUICK_LICENSE_OK', 'quick_license_key', 'quick_license_expiry_date', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'varimo_activation_date', 'quick_variable_activation_date', 'varimo_plugin_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wc_attribute_display_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_attribute_tooltip_permission_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_color', 'term_secondary_color', 'term_image', 'term_tooltip', '_variation_gallery_images', '_quick_cart_carousel_meta', '_variation_list_meta', '_variation_swatches_meta', '_variation_table_meta', '_before_cart_variation_table_meta', '_variation_swatches_archive_page_meta', '_product_attributes', '_variation_table_template', '_wp_attachment_image_alt', '_variation_list_template_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_color', 'term_secondary_color', 'term_image', 'term_tooltip', '_variation_gallery_images', '_quick_cart_carousel_meta', '_variation_list_meta', '_variation_swatches_meta', '_variation_table_meta', '_before_cart_variation_table_meta', '_variation_swatches_archive_page_meta', '_product_attributes', '_variation_table_template', '_wp_attachment_image_alt', '_variation_list_template_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_color', 'term_secondary_color', 'term_image', 'term_tooltip', '_variation_gallery_images', '_quick_cart_carousel_meta', '_variation_list_meta', '_variation_swatches_meta', '_variation_table_meta', '_before_cart_variation_table_meta', '_variation_swatches_archive_page_meta', '_product_attributes', '_variation_table_template', '_wp_attachment_image_alt', '_variation_list_template_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_color', 'term_secondary_color', 'term_image', 'term_tooltip', '_variation_gallery_images', '_quick_cart_carousel_meta', '_variation_list_meta', '_variation_swatches_meta', '_variation_table_meta', '_before_cart_variation_table_meta', '_variation_swatches_archive_page_meta', '_product_attributes', '_variation_table_template', '_wp_attachment_image_alt', '_variation_list_template_meta');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'show_attribute_archive_page_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'show_attribute_archive_page_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'show_attribute_archive_page_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'show_attribute_archive_page_%';

