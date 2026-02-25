-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpam_db_version', 'wpam_options_version', 'wpam_payout_report_generated', 'wp_affiliates_manager_referrers', 'wp_affiliates_manager_payouts', 'wpam_logfile_suffix');
DELETE FROM wp_options WHERE option_name LIKE '%_new_email';

