-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flippingbook_options');
DELETE FROM wp_options WHERE option_name LIKE 'flippingbook_%';

