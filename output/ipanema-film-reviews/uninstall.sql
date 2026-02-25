-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ifr_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('film_author', 'film_actors', 'film_length', 'film_rdate', 'film_rating', 'custom_post_source_name', 'custom_post_source_address', 'attach_data', 'twitter_feed_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('film_author', 'film_actors', 'film_length', 'film_rdate', 'film_rating', 'custom_post_source_name', 'custom_post_source_address', 'attach_data', 'twitter_feed_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('film_author', 'film_actors', 'film_length', 'film_rdate', 'film_rating', 'custom_post_source_name', 'custom_post_source_address', 'attach_data', 'twitter_feed_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('film_author', 'film_actors', 'film_length', 'film_rdate', 'film_rating', 'custom_post_source_name', 'custom_post_source_address', 'attach_data', 'twitter_feed_name');

