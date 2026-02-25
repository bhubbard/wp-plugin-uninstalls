-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialvibe_flash_id', 'socialvibe_user_id', 'socialvibe_width', 'socialvibe_widget_title', 'socialvibe_height', 'socialvibe_noflash', 'socialvibe_widget_display', 'socialvibe_color_mode');

