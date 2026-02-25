-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ptc_dam_external_url', '_ptc_dam_download_url', '_ptc_dam_img_id', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ptc_dam_external_url', '_ptc_dam_download_url', '_ptc_dam_img_id', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ptc_dam_external_url', '_ptc_dam_download_url', '_ptc_dam_img_id', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ptc_dam_external_url', '_ptc_dam_download_url', '_ptc_dam_img_id', '_wp_attached_file');

