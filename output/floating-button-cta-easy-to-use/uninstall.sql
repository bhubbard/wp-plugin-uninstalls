-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfb_main_icon_manual', '_sfb_main_icon', '_sfb_position', '_sfb_bg_color', '_sfb_icon_color', '_sfb_icon_size', '_sfb_tooltip', '_sfb_status', '_sfb_sub_buttons');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfb_main_icon_manual', '_sfb_main_icon', '_sfb_position', '_sfb_bg_color', '_sfb_icon_color', '_sfb_icon_size', '_sfb_tooltip', '_sfb_status', '_sfb_sub_buttons');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfb_main_icon_manual', '_sfb_main_icon', '_sfb_position', '_sfb_bg_color', '_sfb_icon_color', '_sfb_icon_size', '_sfb_tooltip', '_sfb_status', '_sfb_sub_buttons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfb_main_icon_manual', '_sfb_main_icon', '_sfb_position', '_sfb_bg_color', '_sfb_icon_color', '_sfb_icon_size', '_sfb_tooltip', '_sfb_status', '_sfb_sub_buttons');

