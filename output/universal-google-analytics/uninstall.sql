-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('universal_google_analytics_version', 'universal_google_analytics_tracking_id', 'universal_google_tag_type', 'universal_google_analytics_gtag_id', 'universal_google_analytics_tracking_id_ga4');

