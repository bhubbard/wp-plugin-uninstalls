-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wvrbbp_settings', 'active_sitewide_plugins', 'wvrbbp_add_cap_editor_once');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_best_reply_id', '_bbp_best_topic_id', 'wvrbbp_mute', 'wvrbbp_notified', '_bbp_reply_is_private', 'wvrbbp_hide_user_profile', 'bbp_svc_viewcounts', '_wvrx_bbpe_viewcounts', '_wvrbbp_viewcounts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_best_reply_id', '_bbp_best_topic_id', 'wvrbbp_mute', 'wvrbbp_notified', '_bbp_reply_is_private', 'wvrbbp_hide_user_profile', 'bbp_svc_viewcounts', '_wvrx_bbpe_viewcounts', '_wvrbbp_viewcounts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_best_reply_id', '_bbp_best_topic_id', 'wvrbbp_mute', 'wvrbbp_notified', '_bbp_reply_is_private', 'wvrbbp_hide_user_profile', 'bbp_svc_viewcounts', '_wvrx_bbpe_viewcounts', '_wvrbbp_viewcounts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_best_reply_id', '_bbp_best_topic_id', 'wvrbbp_mute', 'wvrbbp_notified', '_bbp_reply_is_private', 'wvrbbp_hide_user_profile', 'bbp_svc_viewcounts', '_wvrx_bbpe_viewcounts', '_wvrbbp_viewcounts');

