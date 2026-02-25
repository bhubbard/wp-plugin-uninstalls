-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_optimizer_subscription_id', 'image_optimizer_client_data', 'image_optimizer_optimization_stats', 'elementor_connect_site_key', 'elementor_image_optimization_campaign', 'update_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed';
DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert';
DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed';

