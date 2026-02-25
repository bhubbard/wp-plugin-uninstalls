-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notification', 'notification_bg_color', 'notification_txt_color', 'notification_bar_fonts', 'notification_btn_txt', 'notification_btn_url', 'notification_btn_bg_color', 'notification_btn_txt_color');

