-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_reviews_badge_place_id', 'simple_reviews_badge_api_key', 'simple_reviews_badge_img_src', 'simple_reviews_badge_cache_duration', 'simple_reviews_badge_review_link', 'simple_reviews_badge_schema_description', 'simple_reviews_badge_schema_name', 'simple_reviews_badge_schema_brand', 'simple_reviews_badge_schema_id', 'simple_reviews_badge_schema_url', 'simple_reviews_badge_use_ajax');

