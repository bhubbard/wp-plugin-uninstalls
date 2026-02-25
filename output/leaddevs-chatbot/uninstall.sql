-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfbmb_feed_fb_messenger_chat_bot_application_credentials', 'wpfbmb_feed_fb_messenger_chat_bot_application_option_setting', 'wpfbmb_fb_messenger_pages_settings');

