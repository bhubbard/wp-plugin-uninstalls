-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('description_text', 'answer_colour_one_string', 'colour_one', 'enable_post_comments');

