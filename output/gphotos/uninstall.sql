-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('option1', 'num_album', 'order_album', 'check1', 'effect', 'effect_pic', 'background_color', 'text_color', 'border_pixel', 'link_color', 'padding', 'box_shadow_pixel', 'box_shadow', 'margin_bottom', 'border_pixel_pic', 'border_rad_pixel_pic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_album', '_link', '_comm');
DELETE FROM wp_usermeta WHERE meta_key IN ('_album', '_link', '_comm');
DELETE FROM wp_termmeta WHERE meta_key IN ('_album', '_link', '_comm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_album', '_link', '_comm');

