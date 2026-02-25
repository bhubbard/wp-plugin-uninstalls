-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duoup_client_id', 'duoup_client_secret', 'duoup_api_host', 'duoup_roles', 'duoup_failmode', 'duoup_xmlrpc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('duo_auth_status', 'duo_auth_redirect_url', 'duo_auth_oidc_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('duo_auth_status', 'duo_auth_redirect_url', 'duo_auth_oidc_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('duo_auth_status', 'duo_auth_redirect_url', 'duo_auth_oidc_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('duo_auth_status', 'duo_auth_redirect_url', 'duo_auth_oidc_state');

