-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_lock_async-request-runner', 'orders_sync_to_airtable_for_woocommerce_exporter_state', 'orders_sync_to_airtable_for_woocommerce_exporter_settings', 'orders_sync_to_airtable_for_woocommerce_check_chars', 'orders_sync_to_airtable_for_woocommerce_current_template_version', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'orders_sync_to_airtable_for_woocommerce_site_health_check_%';

