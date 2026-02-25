-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smt_cf7_enable_conversion_tracking', 'smt_cf7_google_ads_conversion_id', 'smt_cf7_google_ads_conversion_label', 'smt_cf7_ga_measurement_id', 'smt_cf7_ga_api_secret', 'smt_cf7_enable_facebook_conversion_tracking', 'smt_cf7_facebook_pixel_id', 'smt_cf7_db_version');

