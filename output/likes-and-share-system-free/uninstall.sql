-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lass_icons_uses', 'lass_like_liked', 'lass_fa_icons', 'lass_img_icons', 'lass_like_liked_img', 'lass_social_sharing_network', 'lass_fa_colors', 'lass_fa_colors_hover', 'lass_selected_post_types', 'lass_position', 'lass_align', 'lass_font_size', 'lass_custom_style', 'lass_show_on_single', 'lass_show_on_archive', 'lass_show_on_exclude_home', 'lass_custom_img_width', 'lass_custom_img_height', 'lass_woo_position', 'lass_woo_archive', 'lass_woo_archive_position', 'lass_social_sharing_network_exclude', 'lass_first_time_activation');

