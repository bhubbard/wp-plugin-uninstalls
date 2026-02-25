-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsi_configuracion', 'max_image_size_control_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsi_foto_lista', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsi_foto_lista', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsi_foto_lista', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsi_foto_lista', '_wp_attachment_image_alt');

