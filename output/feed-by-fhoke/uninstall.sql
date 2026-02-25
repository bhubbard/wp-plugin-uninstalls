-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbf_settings', 'fbf_access_token', 'fbf_access_token_expiry', 'fbf_media');

