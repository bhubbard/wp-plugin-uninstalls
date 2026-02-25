-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_sso_client_id', 'lana_sso_client_secret', 'lana_sso_authorize_url', 'lana_sso_token_url', 'lana_sso_resource_url');

