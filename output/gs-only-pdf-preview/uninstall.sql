-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gopp_plugin_admin_notices', 'gopp_plugin_poll_rpp', 'gopp_image_gs_cmd_path');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata');

