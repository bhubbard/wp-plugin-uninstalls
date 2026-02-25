-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7ass_blocked_email_domains', 'cf7ass_blocked_email_addresses', 'cf7ass_blocked_email_message', 'cf7ass_blocked_domain_message', 'cf7ass_min_submission_time', 'cf7ass_fast_submission_message', 'cf7ass_submission_limit', 'cf7ass_submission_time_window', 'cf7ass_max_submission_message', 'cf7ass_too_many_submissions_message', 'cf7ass_duplicate_submission_message', 'cf7ass_dep_notice');
DELETE FROM wp_options WHERE option_name LIKE 'cf7ass_submission_count%';

