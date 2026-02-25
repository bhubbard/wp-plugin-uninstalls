-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', 'dominant_color_hex', 'dominant_color_rgb', 'color_palette_rgb', 'color_palette_hex', 'dominant_override');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', 'dominant_color_hex', 'dominant_color_rgb', 'color_palette_rgb', 'color_palette_hex', 'dominant_override');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', 'dominant_color_hex', 'dominant_color_rgb', 'color_palette_rgb', 'color_palette_hex', 'dominant_override');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', 'dominant_color_hex', 'dominant_color_rgb', 'color_palette_rgb', 'color_palette_hex', 'dominant_override');

