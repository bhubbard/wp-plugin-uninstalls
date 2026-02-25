-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boei_key_option', 'boei_just_connected', 'boei_activation_notice');

