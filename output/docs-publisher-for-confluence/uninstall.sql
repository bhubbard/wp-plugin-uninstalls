-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpfcrs_last_sync_time', 'dpfcrs_onboarding_completed', 'dpfcrs_sync', 'dpfcrs_connection', 'dpfcrs_spaces', 'dpfcrs_settings', 'dpfcrs_activation_redirect', 'dpfcrs_available_spaces');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dpfcrs_last_sync_time', '_dpfcrs_confluence_id', '_dpfcrs_confluence_space_key', '_dpfcrs_confluence_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dpfcrs_last_sync_time', '_dpfcrs_confluence_id', '_dpfcrs_confluence_space_key', '_dpfcrs_confluence_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dpfcrs_last_sync_time', '_dpfcrs_confluence_id', '_dpfcrs_confluence_space_key', '_dpfcrs_confluence_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dpfcrs_last_sync_time', '_dpfcrs_confluence_id', '_dpfcrs_confluence_space_key', '_dpfcrs_confluence_version');

