-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zypento_enabled_features', 'zyp_bg_processing', 'zyp_bg_processing_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zyp_task_type', 'zyp_product', 'zyp_user', 'zyp_email', 'zyp_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('zyp_task_type', 'zyp_product', 'zyp_user', 'zyp_email', 'zyp_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('zyp_task_type', 'zyp_product', 'zyp_user', 'zyp_email', 'zyp_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zyp_task_type', 'zyp_product', 'zyp_user', 'zyp_email', 'zyp_name');

