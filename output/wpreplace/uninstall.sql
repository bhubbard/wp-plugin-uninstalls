-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpreplace_options', 'wpreplace_version', 'wpreplace_db_version');

