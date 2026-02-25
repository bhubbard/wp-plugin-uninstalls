-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_cloner_finish_queries', 'ns_cloner_exited', 'ns-media-source-site-url', 'ns_cloner_saved_request', 'ns_cloner_installed_version', 'illegal_names', 'registration', 'ns_cloner_default_template');
DELETE FROM wp_options WHERE option_name LIKE '%_primary_keys';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

