-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_aa_language', 'wps_aa_google_api_key', 'wps_aa_results_title', 'wps_aa_instances', 'wps_aa_review', 'wps_aa_install_time');
DELETE FROM wp_options WHERE option_name LIKE '%options';

