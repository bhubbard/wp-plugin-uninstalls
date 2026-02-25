-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enzuzo_cookie_consent_uuid', 'enzuzo_cookie_consent_enabled', 'enzuzo_cookie_consent_auto_blocking', 'enzuzo_cookie_consent_enable_wp_consent', 'enzuzo_cookie_consent_prefix_code');

