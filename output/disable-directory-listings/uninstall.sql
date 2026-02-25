-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c2c_disable_directory_listings', 'c2c_ddl_activated', 'c2c_ddl_regenerated');
DELETE FROM wp_options WHERE option_name LIKE 'bkup_%';

