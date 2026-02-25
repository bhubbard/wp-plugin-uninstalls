-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfly_simply_excerpt_words_enabled', 'sfly_simply_excerpt_words', 'sfly_simply_excerpt_read_more_enabled', 'sfly_simply_excerpt_read_more', 'sfly_simply_excerpt_type');

