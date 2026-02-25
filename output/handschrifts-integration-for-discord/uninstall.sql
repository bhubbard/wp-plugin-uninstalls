-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('di_guild_id', 'di_bot_token', 'di_client_id', 'di_client_secret', 'di_redirect_url', 'di_auto_add', 'di_wp2d_roles_subscriber', 'di_enable_login');
DELETE FROM wp_options WHERE option_name LIKE 'di_wp2d_roles_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('di_discord_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('di_discord_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('di_discord_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('di_discord_id');

