-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwhtk_time', 'dwhtk_status', 'dwhtk_yes_content', 'dwhtk_no_content');

