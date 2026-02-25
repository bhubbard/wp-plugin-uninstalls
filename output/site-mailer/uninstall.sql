-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_mailer_plan_data', 'elementor_connect_site_key', 'elementor_site_mailer_campaign', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed';
DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert';
DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed';

