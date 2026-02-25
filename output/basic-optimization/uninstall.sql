-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_optimization_disable_emoticons', 'basic_optimization_remove_shortlink', 'basic_optimization_remove_cssjs_ver', 'basic_optimization_remove_rsd_links', 'basic_optimization_disable_embed', 'basic_optimization_disable_xmlrpc', 'basic_optimization_remove_wlwmanifest_link', 'basic_optimization_disable_pingback', 'basic_optimization_hide_wp_version', 'basic_optimization_stop_heartbeat', 'basic_optimization_dequeue_dashicon', 'basic_optimization_installed', 'basic_optimization_version');

