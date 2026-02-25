-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('soumettre_api_key', 'soumettre_api_secret', 'soumettre_settings', 'soumettre_default_author', 'soumettre_error_notice', 'soumettre_auth_state', 'soumettre_spot_id', 'soumettre_email', 'soumettre_commission', 'soum_sour_api_key', 'soum_sour_api_secret', 'soum_sour_author', 'soum_sour_email', 'soumettre_plugin_old_plugin_version', 'soumettre_nonce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'soumettre_url', 'soumettre_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'soumettre_url', 'soumettre_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'soumettre_url', 'soumettre_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'soumettre_url', 'soumettre_id');

