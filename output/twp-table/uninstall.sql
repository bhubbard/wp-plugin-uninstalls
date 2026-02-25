-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twp_display_by', 'twp_is_pagination', 'twp_default_font', 'twp_pagination_position', 'twp_theme_background_color', 'twp_title_text_color', 'twp_package_title', 'twp_package_title_subheader', 'twp_content_header', 'twp_content_subheader', 'twp_content_header_color', 'twp_list_icon', 'iwp_item_list', 'twp_list_alignment');
DELETE FROM wp_usermeta WHERE meta_key IN ('twp_display_by', 'twp_is_pagination', 'twp_default_font', 'twp_pagination_position', 'twp_theme_background_color', 'twp_title_text_color', 'twp_package_title', 'twp_package_title_subheader', 'twp_content_header', 'twp_content_subheader', 'twp_content_header_color', 'twp_list_icon', 'iwp_item_list', 'twp_list_alignment');
DELETE FROM wp_termmeta WHERE meta_key IN ('twp_display_by', 'twp_is_pagination', 'twp_default_font', 'twp_pagination_position', 'twp_theme_background_color', 'twp_title_text_color', 'twp_package_title', 'twp_package_title_subheader', 'twp_content_header', 'twp_content_subheader', 'twp_content_header_color', 'twp_list_icon', 'iwp_item_list', 'twp_list_alignment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twp_display_by', 'twp_is_pagination', 'twp_default_font', 'twp_pagination_position', 'twp_theme_background_color', 'twp_title_text_color', 'twp_package_title', 'twp_package_title_subheader', 'twp_content_header', 'twp_content_subheader', 'twp_content_header_color', 'twp_list_icon', 'iwp_item_list', 'twp_list_alignment');

