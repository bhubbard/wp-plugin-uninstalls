-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jne_shipping_email', 'jne_shipping_donation', 'jne_shipping_onlist_status', 'jne_shipping_name', 'wpe_jneshipp_base_location', 'wpe_jneshipp_base_location_code');

