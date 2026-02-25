-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authyo_cf7_settings', 'authyo_enabled_channels', 'authyo_cf7_form_settings', 'cf7_authyo_settings', 'authyo_cf7_email_subscription_dismissed', 'authyo_cf7_email_subscription_completed', 'authyo_cf7_country_cache_time', '_transient_timeout_authyo_cf7_country_list', 'authyo_cf7_show_email_subscription', 'authyo_cf7_trigger_tracking', 'authyo_cf7_country_list');

