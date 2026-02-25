-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('systemi_dump_database', 'update_plugins', 'update_themes');

