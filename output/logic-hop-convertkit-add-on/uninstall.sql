-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logichop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('logichop_goal_ck_tag', 'logichop_goal_ck_tag_action', 'logichop_goal_ck_custom_field', 'logichop_goal_ck_custom_value', 'logichop_goal_ck_custom_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('logichop_goal_ck_tag', 'logichop_goal_ck_tag_action', 'logichop_goal_ck_custom_field', 'logichop_goal_ck_custom_value', 'logichop_goal_ck_custom_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('logichop_goal_ck_tag', 'logichop_goal_ck_tag_action', 'logichop_goal_ck_custom_field', 'logichop_goal_ck_custom_value', 'logichop_goal_ck_custom_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('logichop_goal_ck_tag', 'logichop_goal_ck_tag_action', 'logichop_goal_ck_custom_field', 'logichop_goal_ck_custom_value', 'logichop_goal_ck_custom_type');

