-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('watermark-hotlink-protection-settings', 'mywebsiteadvisor_pluigin_installer_menu_disable');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wporg_favorites');
DELETE FROM wp_usermeta WHERE meta_key IN ('wporg_favorites');
DELETE FROM wp_termmeta WHERE meta_key IN ('wporg_favorites');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wporg_favorites');

