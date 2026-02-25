-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('netflix_rss', 'netflix_moviesathome', 'netflix_queue', 'netflix_notifications', 'netflix_recommendations', 'netflix_reviews', 'netflix_instant', 'netflix_moviesathome_number', 'netflix_queue_number', 'netflix_notifications_number', 'netflix_recommendations_number', 'netflix_reviews_number', 'netflix_instant_number', 'moviesathome_desc', 'queue_desc', 'notifications_desc', 'recommendations_desc', 'reviews_desc', 'instant_desc');

