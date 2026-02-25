-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('almefy-api-key', 'almefy-api-secret', 'almefy-api-enabled', 'almefy-api-redirect', 'almefy-connect-in-login', 'almefy-session-timeout', 'almefy_plugin_version', 'almefy-mail-connect-on-register', 'almefy-redirect-wizard', 'almefy-mail-disable-welcome');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('created_by_almefy_console');
DELETE FROM wp_usermeta WHERE meta_key IN ('created_by_almefy_console');
DELETE FROM wp_termmeta WHERE meta_key IN ('created_by_almefy_console');
DELETE FROM wp_commentmeta WHERE meta_key IN ('created_by_almefy_console');

