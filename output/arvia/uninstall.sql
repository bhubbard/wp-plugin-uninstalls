-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arviachat_plugin_version', 'arviachat_token', 'arviachat_hash', 'arviachat_projectId');
DELETE FROM wp_options WHERE option_name LIKE 'arviachat_%';

