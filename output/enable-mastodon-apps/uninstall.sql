-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ema_plugin_version', 'mastodon_api_enable_debug', 'mastodon_api_disable_logins', 'mastodon_api_default_create_post_format', 'mastodon_api_posting_cpt', 'mastodon_api_disable_ema_announcements', 'mastodon_api_disable_ema_app_settings_changes', 'mastodon_api_debug_mode', 'mastodon_api_auto_app_reregister', 'rewrite_rules', 'blogdescription_updated_at');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', 'mastodon_reblog_id', 'client_secret', 'redirect_uris', 'client_name', 'scopes', 'website', 'last_used', 'creation_date', 'query_args', 'create_post_type', 'create_post_format', 'view_post_types', 'options', 'request', 'ema_app_id', 'ema_dm_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', 'mastodon_reblog_id', 'client_secret', 'redirect_uris', 'client_name', 'scopes', 'website', 'last_used', 'creation_date', 'query_args', 'create_post_type', 'create_post_format', 'view_post_types', 'options', 'request', 'ema_app_id', 'ema_dm_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', 'mastodon_reblog_id', 'client_secret', 'redirect_uris', 'client_name', 'scopes', 'website', 'last_used', 'creation_date', 'query_args', 'create_post_type', 'create_post_format', 'view_post_types', 'options', 'request', 'ema_app_id', 'ema_dm_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', 'mastodon_reblog_id', 'client_secret', 'redirect_uris', 'client_name', 'scopes', 'website', 'last_used', 'creation_date', 'query_args', 'create_post_type', 'create_post_format', 'view_post_types', 'options', 'request', 'ema_app_id', 'ema_dm_ids');

