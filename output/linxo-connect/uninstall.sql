-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linxo_woo_smart_threshold');
DELETE FROM wp_options WHERE option_name LIKE 'linxo_woo_%';

