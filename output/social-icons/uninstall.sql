-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_icons_meta_box_errors', 'social_icons_admin_footer_text_rated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sortable_icons', 'background_style', 'icon_font_size', '_manage_label', '_greyscale_icons', '_open_new_tab', '_add_nofollow', 'icon_padding');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sortable_icons', 'background_style', 'icon_font_size', '_manage_label', '_greyscale_icons', '_open_new_tab', '_add_nofollow', 'icon_padding');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sortable_icons', 'background_style', 'icon_font_size', '_manage_label', '_greyscale_icons', '_open_new_tab', '_add_nofollow', 'icon_padding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sortable_icons', 'background_style', 'icon_font_size', '_manage_label', '_greyscale_icons', '_open_new_tab', '_add_nofollow', 'icon_padding');

