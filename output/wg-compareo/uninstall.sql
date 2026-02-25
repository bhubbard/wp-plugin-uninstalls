-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wg_cmpr_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_before';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_before';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_before';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_before';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_after';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_after';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_after';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_after';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%height';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%height';

