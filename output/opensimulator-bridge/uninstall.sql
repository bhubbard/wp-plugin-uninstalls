-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wposbridge_address', 'wposbridge_secret', 'wpos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('opensim_avatar_uuid', 'opensim_firstname', 'opensim_lastname');
DELETE FROM wp_usermeta WHERE meta_key IN ('opensim_avatar_uuid', 'opensim_firstname', 'opensim_lastname');
DELETE FROM wp_termmeta WHERE meta_key IN ('opensim_avatar_uuid', 'opensim_firstname', 'opensim_lastname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('opensim_avatar_uuid', 'opensim_firstname', 'opensim_lastname');

