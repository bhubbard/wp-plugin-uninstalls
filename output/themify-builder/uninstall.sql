-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themify_builder_setting', 'active_sitewide_plugins', 'builder_contact', 'tb_css_version', 'themify_builder_google_fonts', 'themify_builder_cf_fonts', 'themify_data', 'sidebars_widgets', 'themify_saved_colors', 'themify_saved_gradients');
DELETE FROM wp_options WHERE option_name LIKE '%_themify_import_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE 'tb_optin_activecampaign_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tbp_custom_css', '_themify_builder_dp_original', '_themify_builder_prebuilt_layout', 'themify_used_global_styles', '_wp_attachment_image_alt', 'page_layout', 'hide_page_title', '_builder_custom_rev_comment', 'themify_global_style_type', '_testimonial_name', '_testimonial_position', '_testimonial_link', '_testimonial_company', '_gallery_link_url', '_gallery_link_target', 'variations', '_wp_attachment_backup_sizes', '_themify_mega_menu_columns_layout', '_themify_dropdown_columns', '_themify_highlight_link', '_themify_mega_menu_item', '_themify_mega_menu_column', 'content_width', 'section_full_scrolling', '_product_image_gallery', 'thumbnail_id', 'popup_show', '_menu_item_object_id', '_menu_item_object', '_menu_item_type', 'feature_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('tbp_custom_css', '_themify_builder_dp_original', '_themify_builder_prebuilt_layout', 'themify_used_global_styles', '_wp_attachment_image_alt', 'page_layout', 'hide_page_title', '_builder_custom_rev_comment', 'themify_global_style_type', '_testimonial_name', '_testimonial_position', '_testimonial_link', '_testimonial_company', '_gallery_link_url', '_gallery_link_target', 'variations', '_wp_attachment_backup_sizes', '_themify_mega_menu_columns_layout', '_themify_dropdown_columns', '_themify_highlight_link', '_themify_mega_menu_item', '_themify_mega_menu_column', 'content_width', 'section_full_scrolling', '_product_image_gallery', 'thumbnail_id', 'popup_show', '_menu_item_object_id', '_menu_item_object', '_menu_item_type', 'feature_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('tbp_custom_css', '_themify_builder_dp_original', '_themify_builder_prebuilt_layout', 'themify_used_global_styles', '_wp_attachment_image_alt', 'page_layout', 'hide_page_title', '_builder_custom_rev_comment', 'themify_global_style_type', '_testimonial_name', '_testimonial_position', '_testimonial_link', '_testimonial_company', '_gallery_link_url', '_gallery_link_target', 'variations', '_wp_attachment_backup_sizes', '_themify_mega_menu_columns_layout', '_themify_dropdown_columns', '_themify_highlight_link', '_themify_mega_menu_item', '_themify_mega_menu_column', 'content_width', 'section_full_scrolling', '_product_image_gallery', 'thumbnail_id', 'popup_show', '_menu_item_object_id', '_menu_item_object', '_menu_item_type', 'feature_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tbp_custom_css', '_themify_builder_dp_original', '_themify_builder_prebuilt_layout', 'themify_used_global_styles', '_wp_attachment_image_alt', 'page_layout', 'hide_page_title', '_builder_custom_rev_comment', 'themify_global_style_type', '_testimonial_name', '_testimonial_position', '_testimonial_link', '_testimonial_company', '_gallery_link_url', '_gallery_link_target', 'variations', '_wp_attachment_backup_sizes', '_themify_mega_menu_columns_layout', '_themify_dropdown_columns', '_themify_highlight_link', '_themify_mega_menu_item', '_themify_mega_menu_column', 'content_width', 'section_full_scrolling', '_product_image_gallery', 'thumbnail_id', 'popup_show', '_menu_item_object_id', '_menu_item_object', '_menu_item_type', 'feature_size');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_themify_mega_menu_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_themify_mega_menu_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_themify_mega_menu_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_themify_mega_menu_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%feature_size_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%feature_size_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%feature_size_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%feature_size_page';

