-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pressbooks_theme_options_web', 'fifp_disable_for_mobile', '_ext_source_id', 'fifp_import_fi_to_clones_button_callback');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_thumbnail_ext_source_id', 'pb_is_based_on');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_thumbnail_ext_source_id', 'pb_is_based_on');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_thumbnail_ext_source_id', 'pb_is_based_on');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_thumbnail_ext_source_id', 'pb_is_based_on');

