-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fmwp_override_templates_outdated', 'fmwp_hidden_admin_notices', 'fmwp_first_activation_date', 'fmwp_template_statuses', 'fmwp_last_version_upgrade', 'active_sitewide_plugins', 'fmwp_version', 'fmwp_options', 'fmwp_flush_rewrite_rules', '_bbp_super_sticky_topics', 'fmwp_check_template_versions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fmwp_visibility', 'fmwp_forum', 'fmwp_type', 'fmwp_type_order', 'fmwp_last_update', 'fmwp_locked', 'fmwp_solved', 'fmwp_forum_subscriptions', 'fmwp_topic_subscriptions', 'fmwp_prev_status', 'fmwp_spam', 'fmwp_order', 'fmwp_template', 'fmwp_icon', 'fmwp_icon_bgcolor', 'fmwp_icon_color', 'fmwp_user_trash_id', 'fmwp_latest_reply_date', 'fmwp_original_content', 'fmwp_latest_topic_date', 'fmwp_views', 'fmwp_permalink', 'fmwp_original_mentions', 'fmwp_topic', 'fmwp_need_mention', 'fmwp_mentioned', '_bbp_status', '_bbp_forum_type', 'fmwp_migration_forum_id', 'fmwp_migration_cat_id', '_bbp_last_active_time', '_bbp_sticky_topics', 'fmwp_migrated_tag_id', 'fmwp_migration_topic_id', '_bbp_reply_to', 'fmwp_reply_migration_id', '_bbp_forum_id', '_bbp_topic_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('fmwp_visibility', 'fmwp_forum', 'fmwp_type', 'fmwp_type_order', 'fmwp_last_update', 'fmwp_locked', 'fmwp_solved', 'fmwp_forum_subscriptions', 'fmwp_topic_subscriptions', 'fmwp_prev_status', 'fmwp_spam', 'fmwp_order', 'fmwp_template', 'fmwp_icon', 'fmwp_icon_bgcolor', 'fmwp_icon_color', 'fmwp_user_trash_id', 'fmwp_latest_reply_date', 'fmwp_original_content', 'fmwp_latest_topic_date', 'fmwp_views', 'fmwp_permalink', 'fmwp_original_mentions', 'fmwp_topic', 'fmwp_need_mention', 'fmwp_mentioned', '_bbp_status', '_bbp_forum_type', 'fmwp_migration_forum_id', 'fmwp_migration_cat_id', '_bbp_last_active_time', '_bbp_sticky_topics', 'fmwp_migrated_tag_id', 'fmwp_migration_topic_id', '_bbp_reply_to', 'fmwp_reply_migration_id', '_bbp_forum_id', '_bbp_topic_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('fmwp_visibility', 'fmwp_forum', 'fmwp_type', 'fmwp_type_order', 'fmwp_last_update', 'fmwp_locked', 'fmwp_solved', 'fmwp_forum_subscriptions', 'fmwp_topic_subscriptions', 'fmwp_prev_status', 'fmwp_spam', 'fmwp_order', 'fmwp_template', 'fmwp_icon', 'fmwp_icon_bgcolor', 'fmwp_icon_color', 'fmwp_user_trash_id', 'fmwp_latest_reply_date', 'fmwp_original_content', 'fmwp_latest_topic_date', 'fmwp_views', 'fmwp_permalink', 'fmwp_original_mentions', 'fmwp_topic', 'fmwp_need_mention', 'fmwp_mentioned', '_bbp_status', '_bbp_forum_type', 'fmwp_migration_forum_id', 'fmwp_migration_cat_id', '_bbp_last_active_time', '_bbp_sticky_topics', 'fmwp_migrated_tag_id', 'fmwp_migration_topic_id', '_bbp_reply_to', 'fmwp_reply_migration_id', '_bbp_forum_id', '_bbp_topic_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fmwp_visibility', 'fmwp_forum', 'fmwp_type', 'fmwp_type_order', 'fmwp_last_update', 'fmwp_locked', 'fmwp_solved', 'fmwp_forum_subscriptions', 'fmwp_topic_subscriptions', 'fmwp_prev_status', 'fmwp_spam', 'fmwp_order', 'fmwp_template', 'fmwp_icon', 'fmwp_icon_bgcolor', 'fmwp_icon_color', 'fmwp_user_trash_id', 'fmwp_latest_reply_date', 'fmwp_original_content', 'fmwp_latest_topic_date', 'fmwp_views', 'fmwp_permalink', 'fmwp_original_mentions', 'fmwp_topic', 'fmwp_need_mention', 'fmwp_mentioned', '_bbp_status', '_bbp_forum_type', 'fmwp_migration_forum_id', 'fmwp_migration_cat_id', '_bbp_last_active_time', '_bbp_sticky_topics', 'fmwp_migrated_tag_id', 'fmwp_migration_topic_id', '_bbp_reply_to', 'fmwp_reply_migration_id', '_bbp_forum_id', '_bbp_topic_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fmwp_forum_subscription_token_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fmwp_forum_subscription_token_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fmwp_forum_subscription_token_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fmwp_forum_subscription_token_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fmwp_topic_subscription_token_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fmwp_topic_subscription_token_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fmwp_topic_subscription_token_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fmwp_topic_subscription_token_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notification';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notification';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notification';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notification';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fmwp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fmwp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fmwp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fmwp_%';

