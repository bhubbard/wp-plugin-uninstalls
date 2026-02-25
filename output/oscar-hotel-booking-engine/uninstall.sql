-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ohbe_inventory', 'ohbe_inventory_accounts', 'ohbe_settings', 'ohbe', 'ohbe_flush');

