-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_redq_rating', 'webpack_public_path_url', 'reactive_builder_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_redq_rating';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('red_rb_stored_settings', 'redq_rb_comment_rating', 'liked_user', 'disliked_user', 'number_of_likes', 'number_of_dislikes', 'redq_rb_rating_attachments', 'redq_total_review', 'redq_total_no_of_reviews', 'total_rating_length', 'average_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('red_rb_stored_settings', 'redq_rb_comment_rating', 'liked_user', 'disliked_user', 'number_of_likes', 'number_of_dislikes', 'redq_rb_rating_attachments', 'redq_total_review', 'redq_total_no_of_reviews', 'total_rating_length', 'average_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('red_rb_stored_settings', 'redq_rb_comment_rating', 'liked_user', 'disliked_user', 'number_of_likes', 'number_of_dislikes', 'redq_rb_rating_attachments', 'redq_total_review', 'redq_total_no_of_reviews', 'total_rating_length', 'average_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('red_rb_stored_settings', 'redq_rb_comment_rating', 'liked_user', 'disliked_user', 'number_of_likes', 'number_of_dislikes', 'redq_rb_rating_attachments', 'redq_total_review', 'redq_total_no_of_reviews', 'total_rating_length', 'average_rating');

