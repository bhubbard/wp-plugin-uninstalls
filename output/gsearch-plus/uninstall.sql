-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gomo_searchplus_options', 'gee_searchplus_options', 'geesearch_dismissed_notices');

