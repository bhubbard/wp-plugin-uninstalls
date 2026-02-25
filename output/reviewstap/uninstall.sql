-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewstap_bus_id', 'reviewstap_api_key', 'reviewstap_secret_key', 'reviewstap_auto_add_users', 'reviewstap_auto_add_wc_customers', 'reviewstap_auto_add_wc_orders');

