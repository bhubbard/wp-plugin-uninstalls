-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('replace_contents_logs', 'replace_contents_max_execution_time');

