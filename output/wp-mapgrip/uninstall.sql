-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mapgrip_height', 'mapgrip_width', 'mapgrip_user_name', 'mapgrip_password', 'mapgrip_client_id', 'mapgrip_title', 'mapgrip_subtitle', 'mapgrip_grant_type', 'mapgrip_embed_url', 'mapgrip_secret_token', 'mapgrip_api_url', 'mapgrip_auth_token');

