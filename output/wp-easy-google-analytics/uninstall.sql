-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_easy_google_analytics_options', 'wp_easy_analytics_options');

