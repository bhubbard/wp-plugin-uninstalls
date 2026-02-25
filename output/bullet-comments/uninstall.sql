-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_bullet_comments_verify', 'bullet_comments_style', 'is_bullet_comments_guest_comment_verify', 'bullet_comments_split_text_input_c');

