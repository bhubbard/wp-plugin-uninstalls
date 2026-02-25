-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mx-google-authkey', 'mx-google-token', 'mx-google-refresh-token', 'mx-google-counter', 'mx-yandex-authkey', 'mx-yandex-counter', 'mx-statcounter-config', 'mx-openstat-config', 'mx-openstat-counter', 'mx-yandex-token');

