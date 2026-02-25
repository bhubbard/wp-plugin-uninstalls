-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publishrelay_connector_activation_redirect', 'publishrelay_connector_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_publishrelay_sync_enqueued_at', '_publishrelay_update_enqueued_at', '_publishrelay_sync_attempts', '_publishrelay_synced_at', '_publishrelay_sync_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('_publishrelay_sync_enqueued_at', '_publishrelay_update_enqueued_at', '_publishrelay_sync_attempts', '_publishrelay_synced_at', '_publishrelay_sync_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('_publishrelay_sync_enqueued_at', '_publishrelay_update_enqueued_at', '_publishrelay_sync_attempts', '_publishrelay_synced_at', '_publishrelay_sync_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_publishrelay_sync_enqueued_at', '_publishrelay_update_enqueued_at', '_publishrelay_sync_attempts', '_publishrelay_synced_at', '_publishrelay_sync_error');

