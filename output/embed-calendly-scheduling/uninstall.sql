-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emcs_activation_time', 'emcs_display_greeting', 'emcs_encryption_key', 'emcs_settings');

