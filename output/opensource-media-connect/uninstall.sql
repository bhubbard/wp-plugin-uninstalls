-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opensource_media_connect_client_id', 'opensource_media_connect_access_token', 'opensource_media_connect_client_secret', 'opensource_media_connect_access_token');

