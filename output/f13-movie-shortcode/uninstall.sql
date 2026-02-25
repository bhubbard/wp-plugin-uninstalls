-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('omdb_api_key', 'tmdb_api_key', 'f13_movie_preferred_api');

