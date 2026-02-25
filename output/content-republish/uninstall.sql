-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_republish_cloned_child', '_republish_post', '_republish_post_parent', '_republish_last_updated', '_republish_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_republish_cloned_child', '_republish_post', '_republish_post_parent', '_republish_last_updated', '_republish_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_republish_cloned_child', '_republish_post', '_republish_post_parent', '_republish_last_updated', '_republish_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_republish_cloned_child', '_republish_post', '_republish_post_parent', '_republish_last_updated', '_republish_status');

