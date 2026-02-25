-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('JUST_DUPLICATE_settings', 'JUST_DUPLICATE_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jd_original_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jd_original_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jd_original_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jd_original_post');

