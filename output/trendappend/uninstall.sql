-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trend-domain-id', 'trendappend-options');
DELETE FROM wp_options WHERE option_name LIKE '%-options';

