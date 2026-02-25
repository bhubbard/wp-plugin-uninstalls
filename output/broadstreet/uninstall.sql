-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace');
DELETE FROM wp_options WHERE option_name LIKE 'broadstreet_video_security_warning_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dp_original');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dp_original');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dp_original');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dp_original');

