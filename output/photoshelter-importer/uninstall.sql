-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photoshelter_importer_options', 'photoshelter_importer_oauth_client_id', 'photoshelter_importer_oauth_client_secret', 'photoshelter_importer_oauth_access_token', 'photoshelter_importer_oauth_access_token_expires', 'photoshelter_importer_oauth_access_token_expires_at', 'photoshelter_importer_oauth_refresh_token', 'photoshelter_importer_org_logged_in', 'photoshelter_importer_org_name', 'photoshelter_importer_user_id', 'photoshelter_importer_user_logged_in', 'photoshelter_importer_token_set', 'photoshelter_importer_oauth_state');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('photoshelter_importer_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('photoshelter_importer_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('photoshelter_importer_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('photoshelter_importer_id', '_wp_attachment_image_alt');

