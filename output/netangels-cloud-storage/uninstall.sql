-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('netangelss3_key_id', 'netangelss3_secret_key', 'netangelss3_connection_status', 'netangelss3_bucket', 'netangelss3_auto_enable', 'netangelss3_senderrors');

