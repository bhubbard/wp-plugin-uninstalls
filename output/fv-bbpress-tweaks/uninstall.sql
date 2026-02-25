-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_bbpress_email', 'bbpressmoderationnotify_by_default', '_bbp_root_slug', 'fv_bbpress_rewrite_rules_flush', 'rewrite_rules', 'fv_bbpress_tweaks', '_bbp_default_role', 'bbpressmoderationsearch_before_post');
DELETE FROM wp_options WHERE option_name LIKE '%limit_guest_access';
DELETE FROM wp_options WHERE option_name LIKE '%search_before_post';
DELETE FROM wp_options WHERE option_name LIKE '%notify_by_default';
DELETE FROM wp_options WHERE option_name LIKE '%always_display';
DELETE FROM wp_options WHERE option_name LIKE '%notify';
DELETE FROM wp_options WHERE option_name LIKE '%always_approve_topics';
DELETE FROM wp_options WHERE option_name LIKE '%always_approve_replies';
DELETE FROM wp_options WHERE option_name LIKE '%always_approve_topics_registered';
DELETE FROM wp_options WHERE option_name LIKE '%always_approve_replies_registered';
DELETE FROM wp_options WHERE option_name LIKE '%previously_approved';
DELETE FROM wp_options WHERE option_name LIKE '%put_in_front_end_moderation_links';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fv_bbp_anonymous_email', 'fv_bbp_solved', '_fv_bbpress_reply_forum_id', '_fv_user_imported', '_fv_user_imported_p', 'role', 'account_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fv_bbp_anonymous_email', 'fv_bbp_solved', '_fv_bbpress_reply_forum_id', '_fv_user_imported', '_fv_user_imported_p', 'role', 'account_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fv_bbp_anonymous_email', 'fv_bbp_solved', '_fv_bbpress_reply_forum_id', '_fv_user_imported', '_fv_user_imported_p', 'role', 'account_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fv_bbp_anonymous_email', 'fv_bbp_solved', '_fv_bbpress_reply_forum_id', '_fv_user_imported', '_fv_user_imported_p', 'role', 'account_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_fv%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_fv%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_fv%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fv%';

