-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogport_red_v20');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_blogport_hash', '_wp_attachment_image_alt', 'pvc_views', 'views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_blogport_hash', '_wp_attachment_image_alt', 'pvc_views', 'views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_blogport_hash', '_wp_attachment_image_alt', 'pvc_views', 'views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_blogport_hash', '_wp_attachment_image_alt', 'pvc_views', 'views');

