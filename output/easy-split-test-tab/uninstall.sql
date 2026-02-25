-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_splittest_tab_credits', 'easy_splittest_tab_noindex');

