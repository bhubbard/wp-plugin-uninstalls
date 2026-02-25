-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tl_timelines_order');
DELETE FROM wp_options WHERE option_name LIKE 'timeline_%';

