-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bpp_element', '_bpp_background', '_bpp_repeat-x', '_bpp_repeat-y', '_bpp_color', '_bpp_position', '_bpp_attachment', '_bpp_fade', '_bpp_fade_height', 'example_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bpp_element', '_bpp_background', '_bpp_repeat-x', '_bpp_repeat-y', '_bpp_color', '_bpp_position', '_bpp_attachment', '_bpp_fade', '_bpp_fade_height', 'example_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bpp_element', '_bpp_background', '_bpp_repeat-x', '_bpp_repeat-y', '_bpp_color', '_bpp_position', '_bpp_attachment', '_bpp_fade', '_bpp_fade_height', 'example_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bpp_element', '_bpp_background', '_bpp_repeat-x', '_bpp_repeat-y', '_bpp_color', '_bpp_position', '_bpp_attachment', '_bpp_fade', '_bpp_fade_height', 'example_ignore_notice');

