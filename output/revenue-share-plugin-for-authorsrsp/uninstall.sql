-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RSP_options', 'RSP_options[radio_option1]', 'RSP_options[RSP_text_string]', 'RSP_options[adshare_percentage]');

