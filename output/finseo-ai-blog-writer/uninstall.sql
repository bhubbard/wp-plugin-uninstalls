-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('finseo_admin_notices', 'default_status', 'finseo_delete_data_on_uninstall', 'finseo_api_key', 'finseo_api_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'finseo_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'finseo_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'finseo_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'finseo_dismissed_%';

