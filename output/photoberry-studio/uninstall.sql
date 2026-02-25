-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photoberry_studio_had_default_session_types', 'photoberry_studio_welcomed', 'photoberry_studio_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_photoberry_linked_object', '_photoberry_notification_params');
DELETE FROM wp_usermeta WHERE meta_key IN ('_photoberry_linked_object', '_photoberry_notification_params');
DELETE FROM wp_termmeta WHERE meta_key IN ('_photoberry_linked_object', '_photoberry_notification_params');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_photoberry_linked_object', '_photoberry_notification_params');

