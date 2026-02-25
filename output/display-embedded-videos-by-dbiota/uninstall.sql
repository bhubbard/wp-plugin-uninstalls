-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('displayembeddedvideosbydb_tb_name', 'displayembeddedvideosbydb_flag_recreation', 'displayembeddedvideosbydb_db_version');

