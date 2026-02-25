-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guru_unit', 'guru_space', 'hm_db_space', 'hm_db_unit');

