-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eobu_db_options', 'eobu_schedule_options', 'eobu_options');

