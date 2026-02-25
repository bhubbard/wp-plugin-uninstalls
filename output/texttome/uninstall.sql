-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('texttome_settings', 'texttomeSelect', 'texttome-phonenumber', 'texttome-message');

