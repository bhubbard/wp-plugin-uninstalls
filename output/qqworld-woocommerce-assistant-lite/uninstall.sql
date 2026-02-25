-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('QAWC_EXTENSION', 'QAWC_EXTENSION_brand-taxonomy', 'QAWC_EXTENSION_shipping-status', 'QAWC_EXTENSION_chinization');

