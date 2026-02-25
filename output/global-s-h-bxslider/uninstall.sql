-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bxslider_wp_auto_start', 'bxslider_wp_slide_mode', 'bxslider_wp_slide_speed', 'bxslider_wp_slide_delay', 'bxslider_wp_slide_size', 'bxslider_wp_slide_infiniteLoop', 'bxslider_wp_home_image_url1', 'bxslider_wp_home_image_url2', 'bxslider_wp_home_image_url3', 'bxslider_wp_home_image_url4', 'bxslider_wp_slide_javascript', 'bx_wp_btn_num', 'bxslider_wp_dir');
DELETE FROM wp_options WHERE option_name LIKE 'bxslider_wp_home_image_url%';

