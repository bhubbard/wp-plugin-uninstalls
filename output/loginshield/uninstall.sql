-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginshield_activation_redirect', 'loginshield_realm_id', 'loginshield_access_token', 'loginshield_access_token_not_after', 'loginshield_refresh_token', 'loginshield_refresh_token_not_after', 'loginshield_webauthz_discovery_uri', 'loginshield_webauthz_register_uri', 'loginshield_webauthz_request_uri', 'loginshield_webauthz_exchange_uri', 'loginshield_client_id', 'loginshield_client_token', 'loginshield_realm', 'loginshield_scope', 'loginshield_path', 'loginshield_client_state', 'loginshield_login_page', 'loginshield_authorization_token', 'loginshield_access_token_max_seconds', 'loginshield_refresh_token_max_seconds');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'loginshield_is_registered', 'loginshield_is_confirmed', 'loginshield_is_activated', 'loginshield_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'loginshield_is_registered', 'loginshield_is_confirmed', 'loginshield_is_activated', 'loginshield_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'loginshield_is_registered', 'loginshield_is_confirmed', 'loginshield_is_activated', 'loginshield_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'loginshield_is_registered', 'loginshield_is_confirmed', 'loginshield_is_activated', 'loginshield_user_id');

