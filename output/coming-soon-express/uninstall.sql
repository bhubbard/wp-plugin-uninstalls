-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csx_enable_comingsoon', 'csx_bg_image_overlay_color', 'csx_bg_image_overlay_opacity', 'csx_colors_button_bg', 'csx_colors_button_bg_hover', 'csx_colors_button_text', 'csx_colors_button_text_hover', 'csx_colors_widget_heading_text', 'csx_colors_widget_text', 'csx_colors_links', 'csx_colors_links_hover', 'csx_show_bg_image', 'csx_bg_image', 'csx_show_bigtitle', 'csx_show_headline', 'csx_show_description', 'csx_preview_comingsoonpage', 'csx_bg_image_position_x', 'csx_bg_image_position_y', 'csx_colors_bigtitle', 'csx_colors_headline', 'csx_colors_description', 'csx_custom_css_content');

