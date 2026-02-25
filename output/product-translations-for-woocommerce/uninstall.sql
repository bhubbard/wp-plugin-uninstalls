-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('A2C_woocommerce_bridge_connector_is_custom', 'ptfw_bridge_email', 'ptfw_bridge_phone', 'A2C_woocommerce_bridge_connector_is_installed');

