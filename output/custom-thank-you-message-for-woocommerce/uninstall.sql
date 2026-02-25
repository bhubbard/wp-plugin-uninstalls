-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wctym_custom_message', 'wctym_message_position', 'wctym_bg_color', 'wctym_text_color', 'wctym_border_radius');

