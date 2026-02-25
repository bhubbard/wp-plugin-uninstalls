-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_shortify_show_frontend', 'wp_shortify_auth_token', 'wp_shortify_token', 'wp_shortify_ex_posts', 'wp_shortify_show_posts_clicks', 'wp_shortify_admin_access', 'wp_shortify_plugin_name', 'wp_shortify_client_id', 'wp_shortify_client_secret', 'wp_shortify_api_key', 'wp_shortify_google_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('short_url', 'short_created', 'short_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('short_url', 'short_created', 'short_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('short_url', 'short_created', 'short_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('short_url', 'short_created', 'short_status');

