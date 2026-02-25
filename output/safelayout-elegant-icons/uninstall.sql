-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safelayout_icons_social_options', 'safelayout_icons_options_rate', 'safelayout_icons_options_upgrade', 'safelayout_icons_packs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('safelayout_menu_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('safelayout_menu_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('safelayout_menu_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('safelayout_menu_icon');

