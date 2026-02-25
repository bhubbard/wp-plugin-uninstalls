-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rapidpress_options', 'rapidpress_version', 'rapidpress_activation_notice');

