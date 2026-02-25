-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fastpix_api_key', 'fastpix_api_secret', 'fastpix_encryption_key', 'fastpix_api_key_encrypted', 'fastpix_api_secret_encrypted', 'fastpix_videos');

