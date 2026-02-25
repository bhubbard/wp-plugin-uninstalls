-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('operational_api_key', 'operational_log_activity', 'operational_baseurl');

