-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('search_redirections_rules', 'search_redirections_empty_search_dest');

