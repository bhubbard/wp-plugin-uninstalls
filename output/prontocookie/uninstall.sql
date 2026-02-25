-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prontocookie_app_key', 'prontocookie_app_secret', 'prc_disable_sslverify', 'prc_site_configuration', 'prntck_disable_sslverify', 'prntck_site_configuration');
DELETE FROM wp_options WHERE option_name LIKE '%-prntck-logger-settings';

