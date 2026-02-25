-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comment_tinymce_heading_one', 'comment_tinymce_heading_two', 'comment_tinymce_heading_three', 'comment_tinymce_heading_four', 'comment_tinymce_heading_five', 'comment_tinymce_heading_six', 'comment_tinymce_media_btn', 'comment_tinymce_pre_tag', 'comment_tinymce_blockquote', 'comment_tinymce_code_text_tab', 'comment_tinymce_in_edit_comment');

