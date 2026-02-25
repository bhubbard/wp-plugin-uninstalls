-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foodtrucklocator_db_version', 'foodtrucklocator_settings');

