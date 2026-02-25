-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adsd_activation_time', 'adsd_new_options', 'adsd_new_logging_enabled', 'adsd_log_level', 'adsd_logging_enabled', 'adsd_log_levels', 'adsd_new_network_options', 'adsd_new_cache', 'adsd_new_rules_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'adsd_selection_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'adsd_selection_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'adsd_selection_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'adsd_selection_mode');

