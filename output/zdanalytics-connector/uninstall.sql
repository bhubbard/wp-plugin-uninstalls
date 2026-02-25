-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zdac_ga4_measurement_id', 'zdac_gtm_container_id', 'zdac_require_consent', 'zdac_exclude_logged_in', 'zdac_enable_tracking', 'zdac_consent_cookie_name', 'zdac_consent_source', 'zdac_consent_values');

