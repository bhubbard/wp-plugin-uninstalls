-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('downloaded_font_files', 'sfm_settings', 'sfm_first_activation', 'sfm_dismissed_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfm_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfm_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfm_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfm_dismissed_notices');

