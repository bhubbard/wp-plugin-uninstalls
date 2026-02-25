-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcbt_yazdir_icon', 'gcbt_indir_icon', 'gcbt_yazdir_icon_color', 'gcbt_indir_icon_color', 'gcbt_yazdir_text_color', 'gcbt_indir_text_color', 'gcbt_yazdir_bg_color', 'gcbt_indir_bg_color', 'gcbt_show_yazdir', 'gcbt_show_indir');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

