-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('et_logrocket', 'et_sentry_php', 'et_sentry_js');

