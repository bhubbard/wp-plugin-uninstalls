-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shorterm_db_version', 'shorterm_all_links');
DELETE FROM wp_options WHERE option_name LIKE 'shorterm_link_%';

