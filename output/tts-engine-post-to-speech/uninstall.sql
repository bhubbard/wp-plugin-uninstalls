-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttsengine_button_location_bottom', 'ttsengine_display_link', 'ttsengine_link_location_bottom', 'ttsengine_language', 'ttsengine_version');

