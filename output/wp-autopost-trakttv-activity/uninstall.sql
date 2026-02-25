-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wata_lasttimestamp', 'wata_featured_movies', 'wata_tuser', 'wata_apikey', 'wata_first_date', 'wata_personnalratings', 'wata_trailer', 'wata_overview', 'wata_poster', 'wata_fanart', 'wata_post_status', 'wata_authorid', 'wata_post_date', 'wata_fanart_as_post_featured_image', 'wata_post_title_template', 'wata_post_content_template', 'wata_post_excerpt_template', 'wata_post_signature_option', 'wata_post_signature_template', 'wata_post_categories', 'wata_post_tags', 'wata_movie_featuring_tag', 'wata_movie_featured_number');

