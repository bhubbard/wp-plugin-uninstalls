-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inboxify_fc_api_key', 'inboxify_fc_api_secret', 'inboxify_fc_lists', 'inboxify_fc_plugin_version', 'inboxify_fc_mappings');

