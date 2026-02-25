-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpachievements_mycred_point_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_achievement_type', '_achievement_points', '_achievement_recurring', '_achievement_occurrences', '_achievement_image', '_thumbnail_id', '_quest_points', '_quest_image', '_quest_details', 'achievements_points', 'achievements_gained', 'quests_gained');
DELETE FROM wp_usermeta WHERE meta_key IN ('_achievement_type', '_achievement_points', '_achievement_recurring', '_achievement_occurrences', '_achievement_image', '_thumbnail_id', '_quest_points', '_quest_image', '_quest_details', 'achievements_points', 'achievements_gained', 'quests_gained');
DELETE FROM wp_termmeta WHERE meta_key IN ('_achievement_type', '_achievement_points', '_achievement_recurring', '_achievement_occurrences', '_achievement_image', '_thumbnail_id', '_quest_points', '_quest_image', '_quest_details', 'achievements_points', 'achievements_gained', 'quests_gained');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_achievement_type', '_achievement_points', '_achievement_recurring', '_achievement_occurrences', '_achievement_image', '_thumbnail_id', '_quest_points', '_quest_image', '_quest_details', 'achievements_points', 'achievements_gained', 'quests_gained');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%points';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%points';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%points';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%points';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%points_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%points_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%points_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%points_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%earned_by';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%earned_by';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%earned_by';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%earned_by';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%maximum_earnings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%maximum_earnings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%maximum_earnings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%maximum_earnings';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%wpa_legacy_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%wpa_legacy_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%wpa_legacy_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%wpa_legacy_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%trigger_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%trigger_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%trigger_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%trigger_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%count';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%count';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%count';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%limit';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%limit_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%limit_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%limit_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%limit_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%achievement_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%achievement_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%achievement_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%achievement_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%achievement_post';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%achievement_post';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%achievement_post';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%achievement_post';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%points_required';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%points_required';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%points_required';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%points_required';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%points_type_required';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%points_type_required';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%points_type_required';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%points_type_required';

