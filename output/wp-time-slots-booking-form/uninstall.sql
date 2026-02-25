-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cptslotsb_addons_active_list', 'CPAHB_PASSCODE', 'cp_cpappb_statuses_block', 'CP_WPTSLOTSBK_CSS', 'cp_cptslotsb_rep_enable', 'cp_cptslotsb_rep_days', 'cp_cptslotsb_rep_hour', 'cp_cptslotsb_rep_emails', 'cp_cptslotsb_fp_from_email', 'cp_cptslotsb_rep_subject', 'cp_cptslotsb_rep_emailformat', 'cp_cptslotsb_rep_message', 'cp_tslotsb_LOAD_SCRIPTS', 'CP_WPTS_CSV_SEPARATOR', 'cp_wpts_schcsvexclude', 'cp_cptslotsb_last_verified', 'codepeople_wpts_warning_css');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_cptslotsb_last_sent_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_cptslotsb_last_sent%';
DELETE FROM wp_options WHERE option_name LIKE '%_JS';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';
DELETE FROM wp_options WHERE option_name LIKE 'cpeople-captcha-%';

