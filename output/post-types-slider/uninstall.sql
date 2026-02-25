-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posttysl_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_slider_type', '_s_title', '_s_description', '_s_featured_image', '_slider_post_type', '_slider_post_category', '_all_category', '_post_number', '_category_number', '_slider_category', '_post_order', '_grid_layout', '_post_category_term', '_slider_for', '_post_column', '_category_column', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_slider_type', '_s_title', '_s_description', '_s_featured_image', '_slider_post_type', '_slider_post_category', '_all_category', '_post_number', '_category_number', '_slider_category', '_post_order', '_grid_layout', '_post_category_term', '_slider_for', '_post_column', '_category_column', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_slider_type', '_s_title', '_s_description', '_s_featured_image', '_slider_post_type', '_slider_post_category', '_all_category', '_post_number', '_category_number', '_slider_category', '_post_order', '_grid_layout', '_post_category_term', '_slider_for', '_post_column', '_category_column', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_slider_type', '_s_title', '_s_description', '_s_featured_image', '_slider_post_type', '_slider_post_category', '_all_category', '_post_number', '_category_number', '_slider_category', '_post_order', '_grid_layout', '_post_category_term', '_slider_for', '_post_column', '_category_column', '_price');

