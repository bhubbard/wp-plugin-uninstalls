-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yolink_config');
DELETE FROM wp_options WHERE option_name LIKE 'yolink_search_results_%';

