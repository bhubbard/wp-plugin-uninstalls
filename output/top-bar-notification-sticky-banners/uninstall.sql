-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('topbarnsb_activation', 'topbarnsb_settings', 'topbarnsb_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_topbarnsb_style', '_wp_attachment_image_alt', '_topbarnsb_banner');
DELETE FROM wp_usermeta WHERE meta_key IN ('_topbarnsb_style', '_wp_attachment_image_alt', '_topbarnsb_banner');
DELETE FROM wp_termmeta WHERE meta_key IN ('_topbarnsb_style', '_wp_attachment_image_alt', '_topbarnsb_banner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_topbarnsb_style', '_wp_attachment_image_alt', '_topbarnsb_banner');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

