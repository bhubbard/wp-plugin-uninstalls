-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmb_stats_filter', 'mwp_incremental_update_active', 'mwp_worker_brand', 'mwp_maintenace_mode', 'mwp_core_autoupdate', 'mwp_recovering', 'mwp_container_parameters', 'mwp_container_site_parameters', 'mwp_service_key', 'mwp_incremental_recover_lock', 'mmb_network_admin_install', '_worker_public_key', '_worker_nossl_key', '_action_message_id', 'mwp_notifications', 'mwp_worker_configuration', 'woocommerce_db_version', 'woocommerce_version', 'user_hit_count', 'mwp_recovery_key');
DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%';
DELETE FROM wp_options WHERE option_name LIKE 'n_%';

