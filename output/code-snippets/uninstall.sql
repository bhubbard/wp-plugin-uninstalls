-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_shared_network_snippets', 'recently_activated_snippets', 'shared_network_snippets', 'menu_items', 'code_snippets_version', 'code_snippets_cloud_settings', 'code_snippets_settings', 'settings_errors', 'cs_codevault_snippets', 'cs_local_to_cloud_map');

