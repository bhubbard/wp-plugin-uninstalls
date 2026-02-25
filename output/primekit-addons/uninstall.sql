-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('primekit_cost_estimation_options', 'primekit_features_options', 'primekit_general_options', 'primekit_mailchimp_options', 'primekit_wc_product_tabs_field');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('primekit_addons_excerpt_content', '_primekit_wc_product_description', 'primekit_themebuilder_select', 'primekit_display_condition_select', 'primekit_specific_item_value', '_primekit_template_type', '_wp_page_template', 'primekit_post_views', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('primekit_addons_excerpt_content', '_primekit_wc_product_description', 'primekit_themebuilder_select', 'primekit_display_condition_select', 'primekit_specific_item_value', '_primekit_template_type', '_wp_page_template', 'primekit_post_views', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('primekit_addons_excerpt_content', '_primekit_wc_product_description', 'primekit_themebuilder_select', 'primekit_display_condition_select', 'primekit_specific_item_value', '_primekit_template_type', '_wp_page_template', 'primekit_post_views', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('primekit_addons_excerpt_content', '_primekit_wc_product_description', 'primekit_themebuilder_select', 'primekit_display_condition_select', 'primekit_specific_item_value', '_primekit_template_type', '_wp_page_template', 'primekit_post_views', '_wp_attachment_image_alt');

