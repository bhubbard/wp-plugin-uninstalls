-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timeline_express_no_icons_storage', 'timeline_express_installed_add_ons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_timeline_styles_icon_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('_timeline_styles_icon_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('_timeline_styles_icon_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_timeline_styles_icon_style');

