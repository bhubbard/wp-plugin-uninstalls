-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wally_api_key', 'wally_widget_enabled', 'wally_autosync_enabled', 'wally_sync_consent', 'wally_batch_size');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

