-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('live-admin-defaults');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('live-admin', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('live-admin', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('live-admin', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('live-admin', 'dismissed_wp_pointers');

