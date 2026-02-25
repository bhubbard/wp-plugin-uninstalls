-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jsarch_deactivation_popup');
DELETE FROM wp_options WHERE option_name LIKE '%_metas';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vdw_gallery_id', '_jsprt_achv_season_ranking', '_jsprt_achv_season_points', '_jsprt_achv_player_about', '_jsprt_achv_player_country', '_jsprt_achv_player_ef', '_jsprt_achv_season_about', '_jsprt_achv_season_ef', '_jsprt_achv_stage_season', '_jsprt_achv_stage_about', '_jsprt_achv_stage_date', '_jsprt_achv_stage_time', '_jsprt_achv_stage_ef', '_jsprt_achv_stage_result_sorting', 'extrafields_per_page', 'resfields_per_page', 'stages_per_page', '_joomsport_player_personal');
DELETE FROM wp_usermeta WHERE meta_key IN ('vdw_gallery_id', '_jsprt_achv_season_ranking', '_jsprt_achv_season_points', '_jsprt_achv_player_about', '_jsprt_achv_player_country', '_jsprt_achv_player_ef', '_jsprt_achv_season_about', '_jsprt_achv_season_ef', '_jsprt_achv_stage_season', '_jsprt_achv_stage_about', '_jsprt_achv_stage_date', '_jsprt_achv_stage_time', '_jsprt_achv_stage_ef', '_jsprt_achv_stage_result_sorting', 'extrafields_per_page', 'resfields_per_page', 'stages_per_page', '_joomsport_player_personal');
DELETE FROM wp_termmeta WHERE meta_key IN ('vdw_gallery_id', '_jsprt_achv_season_ranking', '_jsprt_achv_season_points', '_jsprt_achv_player_about', '_jsprt_achv_player_country', '_jsprt_achv_player_ef', '_jsprt_achv_season_about', '_jsprt_achv_season_ef', '_jsprt_achv_stage_season', '_jsprt_achv_stage_about', '_jsprt_achv_stage_date', '_jsprt_achv_stage_time', '_jsprt_achv_stage_ef', '_jsprt_achv_stage_result_sorting', 'extrafields_per_page', 'resfields_per_page', 'stages_per_page', '_joomsport_player_personal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vdw_gallery_id', '_jsprt_achv_season_ranking', '_jsprt_achv_season_points', '_jsprt_achv_player_about', '_jsprt_achv_player_country', '_jsprt_achv_player_ef', '_jsprt_achv_season_about', '_jsprt_achv_season_ef', '_jsprt_achv_stage_season', '_jsprt_achv_stage_about', '_jsprt_achv_stage_date', '_jsprt_achv_stage_time', '_jsprt_achv_stage_ef', '_jsprt_achv_stage_result_sorting', 'extrafields_per_page', 'resfields_per_page', 'stages_per_page', '_joomsport_player_personal');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_jsprt_achv_stage_stagecat_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_jsprt_achv_stage_stagecat_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_jsprt_achv_stage_stagecat_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_jsprt_achv_stage_stagecat_%';

