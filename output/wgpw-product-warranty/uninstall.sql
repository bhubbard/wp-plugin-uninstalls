-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgpw_general_tab_enabled', 'wgpw_badge_type', 'wgpw_badge_position', 'wgpw_warranty_badge_text', 'wgpw_guarantee_badge_text', 'wgpw_tooltip_bg_color', 'wgpw_tooltip_text_color', 'wgpw_tooltip_font_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wgpw_warranties', '_wgpw_has_valid_warranty', '_wgpw_warranty');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wgpw_warranties', '_wgpw_has_valid_warranty', '_wgpw_warranty');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wgpw_warranties', '_wgpw_has_valid_warranty', '_wgpw_warranty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wgpw_warranties', '_wgpw_has_valid_warranty', '_wgpw_warranty');

