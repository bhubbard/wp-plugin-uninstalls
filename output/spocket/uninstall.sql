-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spocket_store_authorization_key', 'spocket_shop_url', 'spocket_auth_token', 'spocket_user_id', 'spocket_connected');

