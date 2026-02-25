-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forbidden_words', 'forbidden_title', 'forbidden_content', 'forbidden_notice');

