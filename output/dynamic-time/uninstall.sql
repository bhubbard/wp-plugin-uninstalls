-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dyt_db_version', 'dyt_pro_version', 'dyt_hide_survey', 'dyt_user_ct', 'dyt_sup_ct', 'dyt_idx', 'dyt_idx5', 'dyt_cal_lk', 'dyt_pro', 'dyt_config_prompt', 'dyt_config_dropdata', 'dyt_config_pto_accrue', 'dyt_config_categorylist_pto', 'dyt_period_admin_set');
DELETE FROM wp_options WHERE option_name LIKE '%currency';
DELETE FROM wp_options WHERE option_name LIKE '%period';
DELETE FROM wp_options WHERE option_name LIKE '%weekbegin';
DELETE FROM wp_options WHERE option_name LIKE '%payroll';
DELETE FROM wp_options WHERE option_name LIKE '%prompt';
DELETE FROM wp_options WHERE option_name LIKE '%notes';
DELETE FROM wp_options WHERE option_name LIKE '%presubmit';
DELETE FROM wp_options WHERE option_name LIKE '%dropdata';
DELETE FROM wp_options WHERE option_name LIKE '%timeout';
DELETE FROM wp_options WHERE option_name LIKE '%geoloc';
DELETE FROM wp_options WHERE option_name LIKE '%sigreq';
DELETE FROM wp_options WHERE option_name LIKE '%categoryon';
DELETE FROM wp_options WHERE option_name LIKE '%categorylist';
DELETE FROM wp_options WHERE option_name LIKE '%categorylist_pto';
DELETE FROM wp_options WHERE option_name LIKE '%custom_ot';
DELETE FROM wp_options WHERE option_name LIKE '%ot_min_dy';
DELETE FROM wp_options WHERE option_name LIKE '%ot_min_wk';
DELETE FROM wp_options WHERE option_name LIKE '%ot_multip';
DELETE FROM wp_options WHERE option_name LIKE '%df_in';
DELETE FROM wp_options WHERE option_name LIKE '%df_out';
DELETE FROM wp_options WHERE option_name LIKE '%df_hr';
DELETE FROM wp_options WHERE option_name LIKE '%predict';
DELETE FROM wp_options WHERE option_name LIKE '%pto_default';
DELETE FROM wp_options WHERE option_name LIKE '%pto_bank';
DELETE FROM wp_options WHERE option_name LIKE '%pto_split';
DELETE FROM wp_options WHERE option_name LIKE '%pto_accrue';
DELETE FROM wp_options WHERE option_name LIKE '%df_date';
DELETE FROM wp_options WHERE option_name LIKE '%df_hmn_date';
DELETE FROM wp_options WHERE option_name LIKE '%cal_lk';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

