-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultp_builder_conditions', 'ultp_site_dark_logo', 'widget_block', 'ultp_frontpage_builder_comp', 'ultp_options', '__ultp_site_type', 'active_sitewide_plugins', 'edd_ultp_license_data', 'postx_global', 'site_logo', 'ultp_premade_wishlist', 'ultpPresetColors', 'ultpPresetGradients', 'ultpPresetTypos', 'edd_ultp_license_key', 'ultp_generalDiscount', 'wpxpo_installation_date', 'durbin_country_code');
DELETE FROM wp_options WHERE option_name LIKE 'ultp_helloBar%';
DELETE FROM wp_options WHERE option_name LIKE '_ultp_preview_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ultp_active', '__builder_feature_video', '__builder_feature_caption', '__container_width', '__builder_sidebar', '__builder_widget_area', '__ultp_builder_type', '__post_views_count', 'ultp_category_image', 'ultp_category_color', 'share_count', '__font_settings', '_ultp_css', '_wp_attachment_image_alt', '__ultp_starter_pack_post', '_wp_page_template', '__ultp_starter_pack_term', '_form', '_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ultp_active', '__builder_feature_video', '__builder_feature_caption', '__container_width', '__builder_sidebar', '__builder_widget_area', '__ultp_builder_type', '__post_views_count', 'ultp_category_image', 'ultp_category_color', 'share_count', '__font_settings', '_ultp_css', '_wp_attachment_image_alt', '__ultp_starter_pack_post', '_wp_page_template', '__ultp_starter_pack_term', '_form', '_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ultp_active', '__builder_feature_video', '__builder_feature_caption', '__container_width', '__builder_sidebar', '__builder_widget_area', '__ultp_builder_type', '__post_views_count', 'ultp_category_image', 'ultp_category_color', 'share_count', '__font_settings', '_ultp_css', '_wp_attachment_image_alt', '__ultp_starter_pack_post', '_wp_page_template', '__ultp_starter_pack_term', '_form', '_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ultp_active', '__builder_feature_video', '__builder_feature_caption', '__container_width', '__builder_sidebar', '__builder_widget_area', '__ultp_builder_type', '__post_views_count', 'ultp_category_image', 'ultp_category_color', 'share_count', '__font_settings', '_ultp_css', '_wp_attachment_image_alt', '__ultp_starter_pack_post', '_wp_page_template', '__ultp_starter_pack_term', '_form', '_hash');

