-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('corona_test_results_options', 'dismissed_corona_test_results_rating_nag', 'corona_test_results_activationtime', 'corona_test_results_license_error', 'corona_test_results_quickcheckin_page_created', 'corona_test_results_result_invalid_page_created', 'corona_test_results_license_error', 'corona_test_results_license_activated');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_corona_test_results_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_created';

