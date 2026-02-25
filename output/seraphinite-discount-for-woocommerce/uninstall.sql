-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seraph_secretKey');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'seraph_wd_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_seraph_wd_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_seraph_wd_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_seraph_wd_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seraph_wd_%';

