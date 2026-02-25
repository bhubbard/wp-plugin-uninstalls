-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paratypewr_settings', 'ptw_settings', 'paratypewr_settings_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paratypewr_user_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('paratypewr_user_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('paratypewr_user_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paratypewr_user_settings');

