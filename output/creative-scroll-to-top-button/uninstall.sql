-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('creative_scroll_to_top_button_settings', 'creative_scroll_to_top_button_activation_notice');

