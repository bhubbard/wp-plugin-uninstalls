-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iwp_client_backup_tasks', 'site_url', 'iwp_client_nossl_key', 'iwp_client_public_key', 'iwp_client_action_message_id', 'iwp_client_notifications', 'iwp_client_pageview_alerts', 'iwp_client_user_hit_count', 'iwp_client_network_admin_install', 'iwp_client_activate_key', 'bit51_bwps', 'iwp_client_brand', 'iwp_client_maintenace_mode', 'iwp_client_forcerefresh', 'iwp_mmb_stats_filter', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%';

