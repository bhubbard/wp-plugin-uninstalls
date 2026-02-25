-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('badgeos_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_create_bp_activty', '_badgeos_show_bp_member_menu', '_badgeos_show_bp_member_menu_ranks', '_badgeos_count', '_badgeos_promote_group_id', '_badgeos_group_id', '_badgeos_private_group_id', '_badgeos_forum_id', '_badgeos_community_trigger', '_badgeos_triggered_triggers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_create_bp_activty', '_badgeos_show_bp_member_menu', '_badgeos_show_bp_member_menu_ranks', '_badgeos_count', '_badgeos_promote_group_id', '_badgeos_group_id', '_badgeos_private_group_id', '_badgeos_forum_id', '_badgeos_community_trigger', '_badgeos_triggered_triggers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_create_bp_activty', '_badgeos_show_bp_member_menu', '_badgeos_show_bp_member_menu_ranks', '_badgeos_count', '_badgeos_promote_group_id', '_badgeos_group_id', '_badgeos_private_group_id', '_badgeos_forum_id', '_badgeos_community_trigger', '_badgeos_triggered_triggers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_create_bp_activty', '_badgeos_show_bp_member_menu', '_badgeos_show_bp_member_menu_ranks', '_badgeos_count', '_badgeos_promote_group_id', '_badgeos_group_id', '_badgeos_private_group_id', '_badgeos_forum_id', '_badgeos_community_trigger', '_badgeos_triggered_triggers');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rank';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rank';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rank';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rank';

