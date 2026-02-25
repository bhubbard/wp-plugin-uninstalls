-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsdp_initial_save_version', 'lsdp-ratingDiv', 'lsdp-installDate', 'lsdp-v', 'lsdp-type', 'lsdp_plugin_activation_redirect');

