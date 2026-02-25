-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bw_options', 'bw_options1', 'bw_plugins', 'bw_buttons', 'bw_admin_options', 'active_sitewide_plugins', '_site_transient_update_plugins', 'bw_themes', '_site_transient_update_themes', 'plugin_slugs', 'theme_slugs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bw_image_link', '_wp_attachment_metadata', '_wp_attached_file', '_sc_param_code', '_oik_sc_code', '_lat', '_long', '_post_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bw_image_link', '_wp_attachment_metadata', '_wp_attached_file', '_sc_param_code', '_oik_sc_code', '_lat', '_long', '_post_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bw_image_link', '_wp_attachment_metadata', '_wp_attached_file', '_sc_param_code', '_oik_sc_code', '_lat', '_long', '_post_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bw_image_link', '_wp_attachment_metadata', '_wp_attached_file', '_sc_param_code', '_oik_sc_code', '_lat', '_long', '_post_code');

