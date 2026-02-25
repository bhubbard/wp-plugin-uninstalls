-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('options_freshjet__api_key', 'options_freshjet__secret_key', 'options_freshjet__sender_name', 'options_freshjet__sender_email');

