-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbfs_no_jquery', 'fbfs_no_css', 'fbfs_fburi', 'fbfs_no_close', 'fbfs_no_never_show', 'fbfs_tagline', 'fbfs_def_email', 'fbfs_def_submit');

