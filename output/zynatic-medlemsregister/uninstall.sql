-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zynaau_options', 'zynatic_authentication_option_name', 'zynatic_medlemsregister_option_name', 'zynamr_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ZynaticID');
DELETE FROM wp_usermeta WHERE meta_key IN ('ZynaticID');
DELETE FROM wp_termmeta WHERE meta_key IN ('ZynaticID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ZynaticID');

