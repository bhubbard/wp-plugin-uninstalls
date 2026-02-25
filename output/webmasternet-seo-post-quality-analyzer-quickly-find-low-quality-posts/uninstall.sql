-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_analyzer_word', 'post_analyzer_img', 'post_analyzer_head', 'post_analyzer_para', 'post_analyzer_date');

