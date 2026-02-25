-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rami__settings_data', 'ami_icons_downloaded', 'rami_activation_check', 'rami_wp_plugin_activation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_svg_icon', '_svg_position', '_svg_icon_size', '_svg_icon_color', '_svg_icon_hover_color', '_svg_top_margin', '_svg_right_margin', '_svg_bottom_margin', '_svg_left_margin', '_custom_image', '_svg_tag', '_svg_group', '_custom_image_id', '_hover_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_svg_icon', '_svg_position', '_svg_icon_size', '_svg_icon_color', '_svg_icon_hover_color', '_svg_top_margin', '_svg_right_margin', '_svg_bottom_margin', '_svg_left_margin', '_custom_image', '_svg_tag', '_svg_group', '_custom_image_id', '_hover_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_svg_icon', '_svg_position', '_svg_icon_size', '_svg_icon_color', '_svg_icon_hover_color', '_svg_top_margin', '_svg_right_margin', '_svg_bottom_margin', '_svg_left_margin', '_custom_image', '_svg_tag', '_svg_group', '_custom_image_id', '_hover_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_svg_icon', '_svg_position', '_svg_icon_size', '_svg_icon_color', '_svg_icon_hover_color', '_svg_top_margin', '_svg_right_margin', '_svg_bottom_margin', '_svg_left_margin', '_custom_image', '_svg_tag', '_svg_group', '_custom_image_id', '_hover_image_id');

