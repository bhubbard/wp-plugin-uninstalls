-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmc_reviews_opt_in_style', 'gmc_reviews_delivery_days', 'gmc_reviews_badge_position', 'gmc_reviews_merchant_id', 'gmc_reviews_gtm_enabled', 'gmc_reviews_gtm_event_name', 'brumigmcreview_debug_mode', 'gmc_reviews_script_placement', 'brumigmcreview_optin_count');

