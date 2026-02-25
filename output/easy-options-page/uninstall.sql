-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_option_name', 'easy_option_logo', 'easy_option_numOps', 'easy_option_table', 'easy_page_options');

