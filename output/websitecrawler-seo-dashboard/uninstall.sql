-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbstcrlrsdb-token', 'wbstcrlrsdb-last-response', 'wbstcrlrsdb-api-key');

