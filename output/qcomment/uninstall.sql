-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qc_app_key', 'qc_subject', 'qc_load_comments', 'qc_buy_for_all', 'qc_tariff_id', 'qc_task', 'qc_group_id', 'qc_language', 'qc_min_rating', 'qc_team_id', 'qc_comment_configs', 'qc_start_time', 'qc_end_time', 'qc_limit', 'qc_cnt_day_limit', 'qc_min_day_limit', 'qc_max_day_limit', 'qc_delay_from', 'qc_delay_to', 'qc_limit_hour', 'qc_limit_url', 'qc_limit_url_day', 'qc_limit_author', 'qc_limit_author_day', 'qc_max_turn', 'qc_stop_words', 'qc_pay', 'qc_export_comments', 'tariff');
DELETE FROM wp_options WHERE option_name LIKE 'qc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qcomment_project_id', '_qcomment_bought_comments', '_qcomment_auto_check_comments', 'qcomment_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qcomment_project_id', '_qcomment_bought_comments', '_qcomment_auto_check_comments', 'qcomment_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qcomment_project_id', '_qcomment_bought_comments', '_qcomment_auto_check_comments', 'qcomment_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qcomment_project_id', '_qcomment_bought_comments', '_qcomment_auto_check_comments', 'qcomment_login');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcomment_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcomment_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcomment_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcomment_%';

