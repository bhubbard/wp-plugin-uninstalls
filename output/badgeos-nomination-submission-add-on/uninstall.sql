-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bos_ns_options', 'badgeos_admin_tools', 'badgeos_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_earned_by', '_badgeos_submission_achievement_id', '_badgeos_submission_status', '_badgeos_nomination_achievement_id', '_badgeos_nomination_status', '_badgeos_nomination_user_id', '_badgeos_nominating_user_id', 'submission_draft_achievement_id', '_badgeos_submission_user_id', '_wp_attached_file', '_badgeos_all_attachment_submission_comment', '_badgeos_all_attachment_submission');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_earned_by', '_badgeos_submission_achievement_id', '_badgeos_submission_status', '_badgeos_nomination_achievement_id', '_badgeos_nomination_status', '_badgeos_nomination_user_id', '_badgeos_nominating_user_id', 'submission_draft_achievement_id', '_badgeos_submission_user_id', '_wp_attached_file', '_badgeos_all_attachment_submission_comment', '_badgeos_all_attachment_submission');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_earned_by', '_badgeos_submission_achievement_id', '_badgeos_submission_status', '_badgeos_nomination_achievement_id', '_badgeos_nomination_status', '_badgeos_nomination_user_id', '_badgeos_nominating_user_id', 'submission_draft_achievement_id', '_badgeos_submission_user_id', '_wp_attached_file', '_badgeos_all_attachment_submission_comment', '_badgeos_all_attachment_submission');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_earned_by', '_badgeos_submission_achievement_id', '_badgeos_submission_status', '_badgeos_nomination_achievement_id', '_badgeos_nomination_status', '_badgeos_nomination_user_id', '_badgeos_nominating_user_id', 'submission_draft_achievement_id', '_badgeos_submission_user_id', '_wp_attached_file', '_badgeos_all_attachment_submission_comment', '_badgeos_all_attachment_submission');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%submission_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%submission_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%submission_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%submission_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%nomination_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%nomination_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%nomination_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%nomination_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_achievement_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_achievement_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_achievement_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_achievement_id';

