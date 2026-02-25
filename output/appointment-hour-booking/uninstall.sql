-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpappb_addons_active_list', 'cpappb_dashboard_maxitems', 'cpappb_dashboard_columns', 'cpappb_dashboard_columnlabels', 'cpappb_dashboard_compactview', 'CPAHB_PASSCODE', 'cp_cpappb_statuses_block', 'CP_APPB_LOAD_SCRIPTS', 'cp_cpappb_schcalcontent_otherparams', 'cp_cpappb_admin_language', 'cp_cpappb_schcalcontent_admin', 'cp_cpappb_schcaltitle_admin', 'cp_cpappb_schcalcontent_public', 'cp_cpappb_schcaltitle_public', 'cp_cpappb_sch_admin_blockedt', 'cp_cpappb_schcalcontent_exclude', 'CP_AHB_CSS', 'CP_AHB_JS', 'cp_cpappb_honeypot', 'cp_cpappb_storeip', 'cp_cpappb_rep_enable', 'cp_cpappb_rep_days', 'cp_cpappb_rep_hour', 'cp_cpappb_rep_emails', 'cp_cpappb_fp_from_email', 'cp_cpappb_rep_subject', 'cp_cpappb_rep_emailformat', 'cp_cpappb_rep_message', 'cp_cpappb_bocsvexclude', 'cp_cpappb_schcsvexclude', 'CP_APPB_CSV_CHARFIX', 'CP_APPB_CSV_SEPARATOR', 'AHB_ONE_TIME_3UPDATE', 'cp_cpappb_last_verified');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_cpappb_last_sent_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_cpappb_last_sent%';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE '%_JS';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';
DELETE FROM wp_options WHERE option_name LIKE 'ahb-captcha-%';

