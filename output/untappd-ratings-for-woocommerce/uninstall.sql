-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urwc_map_show_infowindow_disclaimer', 'urwc_map_show_ratings_to_admin_only', 'urwc_map_add_product_link', 'urwc_map_cache_is_working', 'urwc_cache_time', 'urwc_ratelimit_remaining', 'urwc_client_id', 'urwc_client_secret', 'urwc_api_url', 'urwc_api_useragent', 'urwc_show_logo', 'urwc_ratings_enabled', 'urwc_ratings_sort_enabled', 'urwc_ratings_show_total', 'urwc_ratings_show_text', 'urwc_ratings_add_to_structured_data', 'urwc_ratings_structured_data_comments_only', 'urwc_ratelimited');
DELETE FROM wp_options WHERE option_name LIKE 'urwc_map_scid_%';
DELETE FROM wp_options WHERE option_name LIKE 'urwc_map_max_checkins_%';
DELETE FROM wp_options WHERE option_name LIKE '%_keys';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_urwc_beer_id', '_urwc_beer_name', '_urwc_last_updated', '_urwc_beer_slug', '_urwc_rating_count', '_urwc_average_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_urwc_beer_id', '_urwc_beer_name', '_urwc_last_updated', '_urwc_beer_slug', '_urwc_rating_count', '_urwc_average_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_urwc_beer_id', '_urwc_beer_name', '_urwc_last_updated', '_urwc_beer_slug', '_urwc_rating_count', '_urwc_average_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_urwc_beer_id', '_urwc_beer_name', '_urwc_last_updated', '_urwc_beer_slug', '_urwc_rating_count', '_urwc_average_rating');

