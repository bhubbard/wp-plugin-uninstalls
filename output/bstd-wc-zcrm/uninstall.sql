-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcformpro_integrate_key_data', 'bcform_secret_api_key', 'bc_inventory_connector_installed', 'bc_inventory_connector_version', 'bc_inventory_connector_activation_redirect', 'bc_inventory_connector_prevent_tracker_notice');

