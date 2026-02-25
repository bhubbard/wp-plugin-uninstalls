-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fq_show_msg', 'frontier_query_general_options');
DELETE FROM wp_options WHERE option_name LIKE '%all-lists';

