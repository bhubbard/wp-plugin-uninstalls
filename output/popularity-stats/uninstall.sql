-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('horshipsrectors_popularity_track_pagerank', 'horshipsrectors_popularity_track_alexa', 'horshipsrectors_popularity_track_links', 'horshipsrectors_popularity_daystocheck', 'horshipsrectors_popularity_daystodisplay', 'horshipsrectors_popularity_checker_google_check', 'horshipsrectors_popularity_checker_alexa_check');
DELETE FROM wp_options WHERE option_name LIKE 'horshipsrectors_popularity_checker_google_value_%';
DELETE FROM wp_options WHERE option_name LIKE 'horshipsrectors_popularity_checker_alexa_rank_%';
DELETE FROM wp_options WHERE option_name LIKE 'horshipsrectors_popularity_checker_alexa_links_%';

