-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('signcoap_p2s_key', 'signcoap_base_url', 'signcoap_events', 'signcoap_pii_data');

