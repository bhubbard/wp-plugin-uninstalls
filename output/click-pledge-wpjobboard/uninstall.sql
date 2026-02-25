-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjb_config', 'wpjb_payment_method', 'taxes_enabled');

