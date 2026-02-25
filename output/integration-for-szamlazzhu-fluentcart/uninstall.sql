-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('szamlazz_hu_invoice_type');
DELETE FROM wp_options WHERE option_name LIKE 'szamlazzhu_%';

