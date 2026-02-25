-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authyo_forminator_email_subscription_dismissed', 'authyo_forminator_email_subscription_completed', 'authyo_forminator_settings', 'authyo_forminator_show_email_subscription', 'authyo_forminator_trigger_tracking');

