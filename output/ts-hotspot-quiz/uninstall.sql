-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'tshoqu_deactivated_notice_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tshoqu_quiz_image', '_tshoqu_hotspots', '_tshoqu_manual_total_points', '_tshoqu_interaction_type', '_tshoqu_total_points', '_tshoqu_mode', '_tshoqu_time_limit', '_tshoqu_pass_mark', '_tshoqu_question_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tshoqu_quiz_image', '_tshoqu_hotspots', '_tshoqu_manual_total_points', '_tshoqu_interaction_type', '_tshoqu_total_points', '_tshoqu_mode', '_tshoqu_time_limit', '_tshoqu_pass_mark', '_tshoqu_question_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tshoqu_quiz_image', '_tshoqu_hotspots', '_tshoqu_manual_total_points', '_tshoqu_interaction_type', '_tshoqu_total_points', '_tshoqu_mode', '_tshoqu_time_limit', '_tshoqu_pass_mark', '_tshoqu_question_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tshoqu_quiz_image', '_tshoqu_hotspots', '_tshoqu_manual_total_points', '_tshoqu_interaction_type', '_tshoqu_total_points', '_tshoqu_mode', '_tshoqu_time_limit', '_tshoqu_pass_mark', '_tshoqu_question_ids');

