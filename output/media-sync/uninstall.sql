-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_sg_use_dry_run', 'ms_sg_file_post_date', 'ms_sg_use_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_msc', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_msc', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_msc', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_msc', '_wp_attached_file');

