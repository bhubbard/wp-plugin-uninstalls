-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brkti_supplier_id', 'brkti_api_key', 'brkti_api_secret', 'brkti_auto_sync', 'brkti_last_sync');
DELETE FROM wp_options WHERE option_name LIKE 'brkti_sync_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'brkti_sync_lock_%';

