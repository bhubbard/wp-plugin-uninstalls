-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpaframe_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%-exclude';

