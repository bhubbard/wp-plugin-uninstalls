-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('id_revertMobile', 'id_blogAcct', 'id_useIDComments', 'id_jsCommentLinks', 'id_moderationPage', 'id_pdxsync', 'id_blogKey', 'id_blogID', 'id_lock_queue', 'id_import_token', 'id_import_comment_id', 'comment_previously_approved', 'disallowed_keys', 'wordpress_api_key', 'id_signup_step', 'id_hideSettingsTop', 'id_recent_comments_count', 'id_top_commenters_count', 'id_most_commented_posts_count');

