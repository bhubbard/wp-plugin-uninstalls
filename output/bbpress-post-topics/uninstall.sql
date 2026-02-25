-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpress_discussion_defaults', 'bbppt_settings', 'rewtt', 'bbpress_discussion_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbpress_discussion_tags_copied', 'bbpress_discussion_comments_copied', 'bbpress_discussion_topic_id', 'use_bbpress_discussion_topic', 'bbpress_discussion_use_defaults', 'bbpress_discussion_display_format', 'bbpress_discussion_display_extras', '_bbp_forum_id', 'bbpress_discussion_hide_topic', 'bbppt_draft_settings', 'bbppt_imported', '_bbp_bbppt_linked_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbpress_discussion_tags_copied', 'bbpress_discussion_comments_copied', 'bbpress_discussion_topic_id', 'use_bbpress_discussion_topic', 'bbpress_discussion_use_defaults', 'bbpress_discussion_display_format', 'bbpress_discussion_display_extras', '_bbp_forum_id', 'bbpress_discussion_hide_topic', 'bbppt_draft_settings', 'bbppt_imported', '_bbp_bbppt_linked_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbpress_discussion_tags_copied', 'bbpress_discussion_comments_copied', 'bbpress_discussion_topic_id', 'use_bbpress_discussion_topic', 'bbpress_discussion_use_defaults', 'bbpress_discussion_display_format', 'bbpress_discussion_display_extras', '_bbp_forum_id', 'bbpress_discussion_hide_topic', 'bbppt_draft_settings', 'bbppt_imported', '_bbp_bbppt_linked_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbpress_discussion_tags_copied', 'bbpress_discussion_comments_copied', 'bbpress_discussion_topic_id', 'use_bbpress_discussion_topic', 'bbpress_discussion_use_defaults', 'bbpress_discussion_display_format', 'bbpress_discussion_display_extras', '_bbp_forum_id', 'bbpress_discussion_hide_topic', 'bbppt_draft_settings', 'bbppt_imported', '_bbp_bbppt_linked_post');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_bbp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_bbp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_bbp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bbp_%';

