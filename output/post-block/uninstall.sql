-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FancyPostPRO_lic_Key', 'FancyPostPRO_lic_email', '_fpblock_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'post_views_count', '_frhd_fp_post_options', '_frhd_fp_user_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'post_views_count', '_frhd_fp_post_options', '_frhd_fp_user_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'post_views_count', '_frhd_fp_post_options', '_frhd_fp_user_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'post_views_count', '_frhd_fp_post_options', '_frhd_fp_user_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_fpblock_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_fpblock_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_fpblock_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fpblock_errors_%';

