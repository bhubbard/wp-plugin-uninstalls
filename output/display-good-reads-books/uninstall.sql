-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goodrds_reading_json', 'goodrds_read_json', 'goodrds_options', 'goodrds_getLimit');

