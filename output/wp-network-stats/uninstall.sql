-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_network_stats_version', 'network_stats_db_version', 'active_sitewide_plugins', 'ns_blog_list', 'ns_active_plugins', 'ns_active_themes', 'update_core', 'update_plugins', 'update_themes');

