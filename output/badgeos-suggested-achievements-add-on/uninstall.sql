-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('badgeos_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_submission_status', '_badgeos_submission_achievement_id', '_badgeos_earned_by', '_badgeos_trigger_type', '_badgeos_achievement_type', '_badgeos_skipped_achievements', '_badgeos_skipped_ranks', '_point_plural_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_submission_status', '_badgeos_submission_achievement_id', '_badgeos_earned_by', '_badgeos_trigger_type', '_badgeos_achievement_type', '_badgeos_skipped_achievements', '_badgeos_skipped_ranks', '_point_plural_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_submission_status', '_badgeos_submission_achievement_id', '_badgeos_earned_by', '_badgeos_trigger_type', '_badgeos_achievement_type', '_badgeos_skipped_achievements', '_badgeos_skipped_ranks', '_point_plural_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_submission_status', '_badgeos_submission_achievement_id', '_badgeos_earned_by', '_badgeos_trigger_type', '_badgeos_achievement_type', '_badgeos_skipped_achievements', '_badgeos_skipped_ranks', '_point_plural_name');

