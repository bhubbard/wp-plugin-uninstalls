-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpf_sem_ajaxload', 'wpf-show-admin-notice', 'wp-forecast-count', 'wp-forecast-timeout', 'wp-forecast-delopt', 'wp-forecast-ipstackapikey', 'wpf_sa_defaults', 'wpf_sa_allowed', 'wp-forecast-pre-transport', 'wp-forecast-wp-transport');
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-location%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-service%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-apikey1%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-apikey2%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-locname%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-refresh%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-metric%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-language%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-daytime%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-nighttime%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-dispconfig%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-windunit%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-currtime%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-timeoffset%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-title%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-expire%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-cache%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-opts%';

