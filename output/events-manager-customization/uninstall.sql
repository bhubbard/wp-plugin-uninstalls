-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_event_require_postal_address', '_event_require_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_event_require_postal_address', '_event_require_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_event_require_postal_address', '_event_require_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_event_require_postal_address', '_event_require_phone');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

