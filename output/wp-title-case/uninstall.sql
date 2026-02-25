-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thisismyurl_wp_title_case_min_word_length', 'thisismyurl_wp_title_case_ignore_words', 'thisismyurl_title_case');

