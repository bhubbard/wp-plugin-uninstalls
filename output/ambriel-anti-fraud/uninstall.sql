-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ambriel_api_key_field', 'ambriel_api_key', 'ambriel_decline_message');
DELETE FROM wp_options WHERE option_name LIKE 'ambriel_wc_status_%';

