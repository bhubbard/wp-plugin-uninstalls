-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kento_splash_screen_demo', 'kento_splash_screen_bg_color', 'kento_splash_screen_bg_img', 'kento_splash_screen_border_size', 'kento_splash_screen_border_color', 'kento_splash_screen_content', 'kento_splash_screen_width', 'kento_splash_screen_height', 'kento_splash_screen_left');

