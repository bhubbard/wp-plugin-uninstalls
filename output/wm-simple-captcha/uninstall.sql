-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmsimplecaptcha_activated_plugin_error', 'wmsimplecaptcha');
DELETE FROM wp_options WHERE option_name LIKE 'plugin_err_%';
DELETE FROM wp_options WHERE option_name LIKE '%_per_page_default';
DELETE FROM wp_options WHERE option_name LIKE '%_activated_plugin_error';

