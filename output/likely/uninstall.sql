-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_in_pages', 'show_twitter', 'twitter_label', 'twitter_acc', 'show_facebook', 'facebook_label', 'show_linkedin', 'linkedin_label', 'show_reddit', 'reddit_label', 'show_vk', 'vk_label', 'show_telegram', 'telegram_label', 'telegram_datatext', 'show_ok', 'ok_label', 'show_whatsapp', 'whatsapp_label', 'show_viber', 'viber_label', 'viber_datacomment', 'show_pinterest', 'pinterest_label', 'light_theme', 'buttons_size', 'linkedit_label');

