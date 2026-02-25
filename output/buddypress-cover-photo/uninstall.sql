-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fileupload_maxk', 'bpcp-profile-default', 'bpcp-group-default');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profile_cover_file_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('profile_cover_file_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('profile_cover_file_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profile_cover_file_path');

