-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feat_art_options', 'fa_plugin_details', 'fa_lite_categories', 'fa_lite_home', 'fa_lite_pages', 'fa_plugin_options', 'fa_version');
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', '_fa_attachment_metadata', '_fa_lite_content', '_fa_lite_aspect', '_fa_lite_home_display', '_fa_lite_categ_display', '_fa_lite_page_display', '_fa_lite_theme', '_fa_lite_display', '_fa_lite_js', '_fa_lite_theme_details', '_fa_cust_link', '_fa_cust_class', '_fa_cust_title', '_fa_cust_txt', '_fa_image', '_fa_image_autodetect', '_fa_bg_color', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', '_fa_attachment_metadata', '_fa_lite_content', '_fa_lite_aspect', '_fa_lite_home_display', '_fa_lite_categ_display', '_fa_lite_page_display', '_fa_lite_theme', '_fa_lite_display', '_fa_lite_js', '_fa_lite_theme_details', '_fa_cust_link', '_fa_cust_class', '_fa_cust_title', '_fa_cust_txt', '_fa_image', '_fa_image_autodetect', '_fa_bg_color', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', '_fa_attachment_metadata', '_fa_lite_content', '_fa_lite_aspect', '_fa_lite_home_display', '_fa_lite_categ_display', '_fa_lite_page_display', '_fa_lite_theme', '_fa_lite_display', '_fa_lite_js', '_fa_lite_theme_details', '_fa_cust_link', '_fa_cust_class', '_fa_cust_title', '_fa_cust_txt', '_fa_image', '_fa_image_autodetect', '_fa_bg_color', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', '_fa_attachment_metadata', '_fa_lite_content', '_fa_lite_aspect', '_fa_lite_home_display', '_fa_lite_categ_display', '_fa_lite_page_display', '_fa_lite_theme', '_fa_lite_display', '_fa_lite_js', '_fa_lite_theme_details', '_fa_cust_link', '_fa_cust_class', '_fa_cust_title', '_fa_cust_txt', '_fa_image', '_fa_image_autodetect', '_fa_bg_color', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_page_ord';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_page_ord';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_page_ord';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_page_ord';

