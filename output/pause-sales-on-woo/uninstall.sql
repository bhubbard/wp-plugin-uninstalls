-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eraclito_wc_pause_enabled', 'eraclito_wc_pause_message', 'eraclito_wc_pause_message_position', 'eraclito_wc_pause_message_bg_color', 'eraclito_wc_pause_message_text_color');

