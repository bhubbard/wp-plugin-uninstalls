-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filejet_api_key', 'filejet_storage_id', 'secret', 'filejet_config', 'filejet_secret');

