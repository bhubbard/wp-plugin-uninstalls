-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eos_asset_preloader');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eos_asset_preloader');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eos_asset_preloader');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eos_asset_preloader');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eos_asset_preloader');

