-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neliosr_subscription', 'neliosr_site_id', 'neliosr_api_secret', 'neliosr_recording_status', 'nelio-session-recordings_settings', 'neliosr_site_object');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

