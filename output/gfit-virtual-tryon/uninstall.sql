-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gvtryon_plugin_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gvtryon_frame_image', 'gvtryon_frame_width', 'gvtryon_standard_face_width', 'gvtryon_diffY');
DELETE FROM wp_usermeta WHERE meta_key IN ('gvtryon_frame_image', 'gvtryon_frame_width', 'gvtryon_standard_face_width', 'gvtryon_diffY');
DELETE FROM wp_termmeta WHERE meta_key IN ('gvtryon_frame_image', 'gvtryon_frame_width', 'gvtryon_standard_face_width', 'gvtryon_diffY');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gvtryon_frame_image', 'gvtryon_frame_width', 'gvtryon_standard_face_width', 'gvtryon_diffY');

