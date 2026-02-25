-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmpro_gateway', 'pmpro_coinsnap_webhook');

