-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lh_copy_from_url-original_file', '_lh_mwpa_lead_image_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lh_copy_from_url-original_file', '_lh_mwpa_lead_image_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lh_copy_from_url-original_file', '_lh_mwpa_lead_image_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lh_copy_from_url-original_file', '_lh_mwpa_lead_image_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-original_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-original_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-original_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-original_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-updated_stamp';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-updated_stamp';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-updated_stamp';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-updated_stamp';

