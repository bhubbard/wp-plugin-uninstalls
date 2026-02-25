-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustindex-wc-notification', 'litespeed.conf.optm-localize_domains', 'trustindex-core-shortcode-inited');
DELETE FROM wp_options WHERE option_name LIKE '%-rate-us';
DELETE FROM wp_options WHERE option_name LIKE '%-review-download-notification-email';
DELETE FROM wp_options WHERE option_name LIKE 'ti-online-users-%';
DELETE FROM wp_options WHERE option_name LIKE '%-widget-setted-up';

