-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatwing_default_keysecret', 'chatwing_default_app_id', 'chatwing_access_token', 'chatwing_default_width', 'chatwing_default_height');
DELETE FROM wp_options WHERE option_name LIKE 'chatwing_default_%';

