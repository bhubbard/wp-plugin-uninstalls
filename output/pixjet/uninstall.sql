-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixjet_auth_token', 'pixjet_config', 'auto_update_plugins', 'pixjet_cdn_config', 'pixjet_external_token', 'pixjet_auto_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pix_wp_attached_file', '_wp_attached_file', '_wp_attachment_metadata', 'pix_wp_attachment_metadata', 'pixjet_process');
DELETE FROM wp_usermeta WHERE meta_key IN ('pix_wp_attached_file', '_wp_attached_file', '_wp_attachment_metadata', 'pix_wp_attachment_metadata', 'pixjet_process');
DELETE FROM wp_termmeta WHERE meta_key IN ('pix_wp_attached_file', '_wp_attached_file', '_wp_attachment_metadata', 'pix_wp_attachment_metadata', 'pixjet_process');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pix_wp_attached_file', '_wp_attached_file', '_wp_attachment_metadata', 'pix_wp_attachment_metadata', 'pixjet_process');

