-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdntr', 'cdntr_api_check_status', 'cdntr_purge_telemetry');

