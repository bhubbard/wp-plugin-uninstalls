-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatwing_default_app_id_lobby', 'lobby_chatwing_access_token', 'chatwing_default_width_lobby', 'chatwing_default_height_lobby');
DELETE FROM wp_options WHERE option_name LIKE 'chatwing_default_%';

