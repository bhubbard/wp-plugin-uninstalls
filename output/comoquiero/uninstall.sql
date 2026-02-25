-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcart_key', 'qcart_supermarket', 'qcart_brands');

