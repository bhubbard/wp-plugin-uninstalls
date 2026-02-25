-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitformpro_integrate_key_data', 'bitform_secret_api_key', 'bit_wc_zoho_inventory_installed', 'bit_wc_zoho_inventory_version', 'bit_wc_zoho_inventory_activation_redirect', 'bit_wc_zoho_inventory_prevent_tracker_notice');

