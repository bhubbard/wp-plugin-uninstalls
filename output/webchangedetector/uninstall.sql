-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcd_manual_checks_batch', 'wcd_disable_admin_bar_menu', 'wcd_wizard_disabled', 'wcd_sync_url_types', 'wcd_initial_setup_completed', 'wcd_wizard', 'wcd_last_urls_sync', 'wcd_auto_update_history', 'webchangedetector_api_token', 'auto_update_plugins', 'auto_update_themes', 'wcd_webhook_key', 'webchangedetector_api_key', 'auto_update_core_major', 'wcd_auto_updates_running', 'wcd_pre_auto_update', 'wcd_last_auto_update_check_time', 'wcd_flash_messages', 'wcd_post_auto_update', 'wcd_wordpress_cron', 'auto_updater.lock', 'wcd_update_check_running', 'update_core', 'update_plugins', 'update_themes', 'wcd_single_call_webhook_id', 'webchangedetector_api_status');

