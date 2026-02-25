-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpg_settingsf', 'rpg_settingsg', 'rpg_groups', 'rpg_roles', 'rpg_topic_permissions', 'rpg_disable_groups', 'rew', '_bbp_forums_per_page', 'rpg_warning', '_bbp_enable_subscriptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('private_group', '_private_group', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbp_total_topic_count', '_bbp_topic_count', '_bbp_reply_count', '_bbp_total_reply_count', '_private_group_nonloggedin', '_bbp_mar_read_ids', '_bbp_last_reply_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('private_group', '_private_group', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbp_total_topic_count', '_bbp_topic_count', '_bbp_reply_count', '_bbp_total_reply_count', '_private_group_nonloggedin', '_bbp_mar_read_ids', '_bbp_last_reply_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('private_group', '_private_group', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbp_total_topic_count', '_bbp_topic_count', '_bbp_reply_count', '_bbp_total_reply_count', '_private_group_nonloggedin', '_bbp_mar_read_ids', '_bbp_last_reply_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('private_group', '_private_group', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbp_total_topic_count', '_bbp_topic_count', '_bbp_reply_count', '_bbp_total_reply_count', '_private_group_nonloggedin', '_bbp_mar_read_ids', '_bbp_last_reply_id');

