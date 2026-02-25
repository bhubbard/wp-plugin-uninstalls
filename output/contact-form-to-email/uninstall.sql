-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_CFTE_LOAD_SCRIPTS', 'cp_cfte_rep_enable', 'cp_cfte_rep_days', 'cp_cfte_rep_hour', 'cp_cfte_rep_emails', 'cp_cfte_fp_from_email', 'cp_cfte_rep_subject', 'cp_cfte_rep_emailformat', 'cp_cfte_rep_message', 'installed_contact-form-to-email', 'CP_CFTE_CSS', 'CP_CFTE_JS', 'CFTE_ONE_TIME_2UPDATE', 'cp_cfte_last_verified', 'autoptimize_js_exclude');
DELETE FROM wp_options WHERE option_name LIKE 'cp_cfte_last_sent_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_cfte_last_sent%';
DELETE FROM wp_options WHERE option_name LIKE '%_JS';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_cftedk_banner_%';
DELETE FROM wp_options WHERE option_name LIKE 'cpeople-captcha-%';

