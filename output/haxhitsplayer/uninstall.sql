-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hxh_secretkey', 'hxh_tag', 'hxh_link', 'hxh_poster', 'hxh_subtitle', 'hxh_cachetime', 'hxh_restat');
DELETE FROM wp_options WHERE option_name LIKE 'hxh_tag%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_lcache';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_lcache';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_lcache';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_lcache';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_result';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_result';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_result';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_result';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data';

