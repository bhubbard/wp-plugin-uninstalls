-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_button_facebook', 'social_button_twitter', 'social_button_google', 'social_button_email', 'social_button_color', 'social_button_color_hover');

