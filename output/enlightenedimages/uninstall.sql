-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elim_api_key', 'elim_azure_endpoint', 'elim_pro', 'elim_pro_plugin', 'elim_pro_api_key', 'elim_on_media_upload', 'elim_alt_text', 'elim_labels', 'elim_text', 'elim_logos', 'elim_landmarks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elim_date', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('elim_date', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('elim_date', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elim_date', '_wp_attachment_image_alt');

