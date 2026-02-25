-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssi_color1', 'ssi_color2', 'ssi_gredient_direction', 'ssi_featImg_override');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssi_color1', 'ssi_color2', 'ssi_gredient_direction', 'ssi_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssi_color1', 'ssi_color2', 'ssi_gredient_direction', 'ssi_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssi_color1', 'ssi_color2', 'ssi_gredient_direction', 'ssi_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssi_color1', 'ssi_color2', 'ssi_gredient_direction', 'ssi_image');

