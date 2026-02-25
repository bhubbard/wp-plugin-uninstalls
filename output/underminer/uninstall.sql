-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('underminer_traffic_all_time');
DELETE FROM wp_options WHERE option_name LIKE 'underminer_traffic_today_%';
DELETE FROM wp_options WHERE option_name LIKE 'underminer_traffic_month_%';

