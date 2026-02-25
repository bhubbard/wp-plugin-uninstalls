-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_dwqa_convert_topic_ids', '_dwqa_new_questions_ids', '_dwqa_new_answers_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dwqa_followers', '_dwqa_status', '_dwqa_views', '_dwqa_votes', '_bbp_reply_count', '_dwqa_answers_count', '_bbp_forum_id', '_bbp_status', '_question', '_dwqa_is_anonymous', '_bbp_anonymous_email', '_dwqa_anonymous_email', '_bbp_anonymous_name', '_dwqa_anonymous_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dwqa_followers', '_dwqa_status', '_dwqa_views', '_dwqa_votes', '_bbp_reply_count', '_dwqa_answers_count', '_bbp_forum_id', '_bbp_status', '_question', '_dwqa_is_anonymous', '_bbp_anonymous_email', '_dwqa_anonymous_email', '_bbp_anonymous_name', '_dwqa_anonymous_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dwqa_followers', '_dwqa_status', '_dwqa_views', '_dwqa_votes', '_bbp_reply_count', '_dwqa_answers_count', '_bbp_forum_id', '_bbp_status', '_question', '_dwqa_is_anonymous', '_bbp_anonymous_email', '_dwqa_anonymous_email', '_bbp_anonymous_name', '_dwqa_anonymous_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dwqa_followers', '_dwqa_status', '_dwqa_views', '_dwqa_votes', '_bbp_reply_count', '_dwqa_answers_count', '_bbp_forum_id', '_bbp_status', '_question', '_dwqa_is_anonymous', '_bbp_anonymous_email', '_dwqa_anonymous_email', '_bbp_anonymous_name', '_dwqa_anonymous_name');

