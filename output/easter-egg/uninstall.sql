-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eew_settings', 'eew_egg-1', 'eew_egg-2', 'eew_files_settings', 'eew_target-url');
DELETE FROM wp_options WHERE option_name LIKE 'eew_egg-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hasCoupon', 'eew_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('hasCoupon', 'eew_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('hasCoupon', 'eew_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hasCoupon', 'eew_data');

