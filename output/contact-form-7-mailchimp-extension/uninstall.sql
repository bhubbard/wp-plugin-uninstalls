-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chimpmatic_license_status', 'chimpmatic-update', 'cmatic_log_on', 'cmatic_do_activation_redirect', 'cmatic_news_retry_count', 'csyncr_last_weekly_run', 'mc4wp', 'yikes-mc-api-key', 'yikes-easy-mailchimp-extender-api-key', 'mailchimp-woocommerce', 'mc4wp_top_bar', 'chimpmatic_license_activation', 'cmatic_license_instance', '_site_transient_update_plugins', 'auto_update_core', 'active_sitewide_plugins', 'auto_update_plugins', 'cmatic', 'mce_conten_panel_welcome', 'mce_loyalty', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'cf7_mch_%';

