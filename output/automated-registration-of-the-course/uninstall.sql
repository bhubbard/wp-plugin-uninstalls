-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'dot_pages_enable', 'dot_pages_slug', 'dot_pages_mode', 'option_etc');

