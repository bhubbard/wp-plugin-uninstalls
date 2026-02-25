-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('add_to_rss_code_before', 'add_to_rss_code_after');

