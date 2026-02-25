-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otb_new_theme', 'active_sitewide_plugins', 'sss_delete_all_data');
DELETE FROM wp_options WHERE option_name LIKE '%_viewed';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('super-simple-slider-slide-settings-group');
DELETE FROM wp_usermeta WHERE meta_key IN ('super-simple-slider-slide-settings-group');
DELETE FROM wp_termmeta WHERE meta_key IN ('super-simple-slider-slide-settings-group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('super-simple-slider-slide-settings-group');

