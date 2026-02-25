-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_google_maps_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tf_flashsale_text', '_tf_flashsale_text_2', '_sale_price', '_regular_price', 'tfhf_template_include_locations', 'tfhf_template_exclude_locations', 'tfhf_template_type', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tf_flashsale_text', '_tf_flashsale_text_2', '_sale_price', '_regular_price', 'tfhf_template_include_locations', 'tfhf_template_exclude_locations', 'tfhf_template_type', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tf_flashsale_text', '_tf_flashsale_text_2', '_sale_price', '_regular_price', 'tfhf_template_include_locations', 'tfhf_template_exclude_locations', 'tfhf_template_type', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tf_flashsale_text', '_tf_flashsale_text_2', '_sale_price', '_regular_price', 'tfhf_template_include_locations', 'tfhf_template_exclude_locations', 'tfhf_template_type', '_wp_attachment_image_alt');

