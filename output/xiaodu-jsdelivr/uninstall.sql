-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xiaodu_jsdelivr_data', 'xiaodu_jsdelivr_lock', 'xiaodu_jsdelivr_api_result', 'xiaodu_jsdelivr_api_resp');

