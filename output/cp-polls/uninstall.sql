-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_POLLS_LOAD_SCRIPTS', 'CP_POLLS_rep_enable', 'CP_POLLS_rep_days', 'CP_POLLS_rep_hour', 'CP_POLLS_rep_emails', 'CP_POLLS_fp_from_email', 'CP_POLLS_rep_subject', 'CP_POLLS_rep_emailformat', 'CP_POLLS_rep_message', 'CP_POLLS_CSS', 'CP_POLLS_last_verified', 'autoptimize_js_exclude');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'CP_POLLS_last_sent_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'CP_POLLS_last_sent%';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

