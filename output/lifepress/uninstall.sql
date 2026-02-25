-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lifepress_dashboard', 'lifepress_create_pages', 'lp_type_meta', 'lifepress_metrics', 'lp_settings', 'life_create_pages', '_lp_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lifepress_ls_sd');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lifepress_ls_sd');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lifepress_ls_sd');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lifepress_ls_sd');

