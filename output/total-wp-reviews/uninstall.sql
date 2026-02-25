-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('total_reviews_google_api_key', 'total_reviews', 'total_reviews_active', 'fbrev_active', 'total_reviews_language', 'total_reviews_version');

