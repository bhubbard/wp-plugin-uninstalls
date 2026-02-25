-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('search_limiter_blocker_option_name');
DELETE FROM wp_options WHERE option_name LIKE 'visitor_ip_count-%';
DELETE FROM wp_options WHERE option_name LIKE '%-deleteafter30min';
DELETE FROM wp_options WHERE option_name LIKE 'visitor_ip_block%';

