-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zvi_callback_title', 'zvi_callback_subtitle', 'zvi_callback_color', 'zvi_callback_color_hover', 'zvi_callback_email', 'zvi_callback_url', 'zvi_callback_shortcode', 'zvi_callback_img', 'zvi_callback_telegram_id', 'zvi_callback_telegram_token', 'zvi_callback_telegram_send', 'zvi_callback_left', 'zvi_callback_color_text');

