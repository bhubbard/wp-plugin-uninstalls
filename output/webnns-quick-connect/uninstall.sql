-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webnns_qc_phone', 'webnns_qc_enabled_call', 'webnns_qc_enabled_viber', 'webnns_qc_enabled_whatsapp');

