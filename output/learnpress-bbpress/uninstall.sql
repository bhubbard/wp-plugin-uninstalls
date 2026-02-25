-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lp_bbpress_forum_enable', '_lp_course_forum', '_lp_bbpress_forum_enrolled_user', '_bbp_forum_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lp_bbpress_forum_enable', '_lp_course_forum', '_lp_bbpress_forum_enrolled_user', '_bbp_forum_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lp_bbpress_forum_enable', '_lp_course_forum', '_lp_bbpress_forum_enrolled_user', '_bbp_forum_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lp_bbpress_forum_enable', '_lp_course_forum', '_lp_bbpress_forum_enrolled_user', '_bbp_forum_id');

