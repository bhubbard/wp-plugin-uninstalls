-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bbuster_disable_emoji', '_bbuster_disable_fse_global_styles', '_bbuster_remove_rsd_link', '_bbuster_remove_shortlink', '_bbuster_disable_embed', '_bbuster_disable_xmlrpc', '_bbuster_hide_wp_version', '_bbuster_disable_heartbeat', '_bbuster_dequeue_dashicon', '_import_success');
DELETE FROM wp_options WHERE option_name LIKE '_bbuster_%';

