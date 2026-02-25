-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('salesfire_tracking', 'salesfire_uuid', 'salesfire_product_prefix');

