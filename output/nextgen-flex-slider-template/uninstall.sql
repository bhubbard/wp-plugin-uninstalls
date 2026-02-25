-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ng_slider_theme', 'ng_slider_display_content', 'ng_slider_image_width', 'ng_slider_text_width', 'ng_slider_slideshow_speed', 'ng_slider_order', 'ng_slider_use_width_for_img_slider', 'ng_slider_disable_img_stretching', 'ng_slider_link_title', 'ng_slider_link_image', 'ng_slider_link_new_window', 'ng_slider_direction_nav', 'ng_slider_pagination', 'ng_slider_background', 'ng_slider_image_height', 'ng_slider_animation', 'ng_slider_direction', 'ng_slider_options', 'ng_slider_us_width_for_img_slider');

