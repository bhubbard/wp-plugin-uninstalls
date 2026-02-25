-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('synapse_api_rate_limit', 'synapse_enable_login_tracking', 'synapse_plugin_tags_cache', 'sg_security_login_url', 'synapse_api_keys', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'synapse_new_api_key_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login');

