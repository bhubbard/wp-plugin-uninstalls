-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cma_afterActivation', 'rewrite_rules', 'cma_questions_title', 'cmaer_email_piping_category', 'active_sitewide_plugins', 'cm_refresh_404_permalinks');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';
DELETE FROM wp_options WHERE option_name LIKE 'cma_widget_%';

