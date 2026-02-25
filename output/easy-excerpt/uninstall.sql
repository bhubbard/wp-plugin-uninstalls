-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_excerpt_length', 'easy_excerpt_more', 'easy_excerpt_more_link', 'easy_excerpt');

