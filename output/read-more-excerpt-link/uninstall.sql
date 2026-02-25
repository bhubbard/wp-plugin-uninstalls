-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('read_more_excerpt_link_text', 'read_more_excerpt_include_ellipsis', 'read_more_excerpt_more_often', 'read_more_excerpt_word_length');

