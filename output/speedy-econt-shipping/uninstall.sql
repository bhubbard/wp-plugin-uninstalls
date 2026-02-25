-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedy_econt_shipping_option_name', 'sesh_db_version', 'sesh_upgrade_running');

