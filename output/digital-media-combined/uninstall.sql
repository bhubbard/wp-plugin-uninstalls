-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_diagnostic_cron_calls', 'newsletter_diagnostic_cron_data', 'newsletter_dismissed', 'newsletter_logger_secret', 'newsletter_followup', 'newsletter_diagnostic_send_calls', 'newsletter_forms', 'newsletter_profile', 'newsletter_extension_versions', 'newsletter_main', 'newsletter_emails', 'dmc_option', 'newsletter_log_level', 'newsletter_email', 'newsletter_diagnostic', '_transient_newsletter_main_engine', '_transient_timeout_newsletter_main_engine', 'newsletter_feed_demo_disable', 'digital-media-combined', 'newsletter_subscription_template', 'newsletter_feed', 'newsletter_main_engine', 'template_extensions_json', 'newsletter_transient_test', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_emails_%';
DELETE FROM wp_options WHERE option_name LIKE '%_log_level';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_first_install_time';
DELETE FROM wp_options WHERE option_name LIKE '%_available_version';
DELETE FROM wp_options WHERE option_name LIKE '%_backup';
DELETE FROM wp_options WHERE option_name LIKE '%_last_run';
DELETE FROM wp_options WHERE option_name LIKE '%_cron_calls';

