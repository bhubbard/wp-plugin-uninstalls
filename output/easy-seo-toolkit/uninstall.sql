-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_est_seo_focuskw', '_est_seo_title', '_est_seo_desc', '_est_seo_kd');
DELETE FROM wp_usermeta WHERE meta_key IN ('_est_seo_focuskw', '_est_seo_title', '_est_seo_desc', '_est_seo_kd');
DELETE FROM wp_termmeta WHERE meta_key IN ('_est_seo_focuskw', '_est_seo_title', '_est_seo_desc', '_est_seo_kd');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_est_seo_focuskw', '_est_seo_title', '_est_seo_desc', '_est_seo_kd');

