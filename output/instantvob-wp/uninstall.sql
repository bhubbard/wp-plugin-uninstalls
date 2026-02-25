-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instantvob_api_url', 'instantvob_api_key', 'instantvob_notification_email', 'instantvob_cf_turnstile_secret', 'instantvob_cf_turnstile_sitekey', 'instantvob_show_branding');

