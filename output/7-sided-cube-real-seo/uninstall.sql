-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssc_real_seo_baseline_last_results', 'ssc_real_seo_baseline_error', 'ssc_real_seo_baseline_results');

