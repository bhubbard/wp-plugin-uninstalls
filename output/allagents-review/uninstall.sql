-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allagentsreviews_review_settings', 'allagentsreviews_api_key_reviews', 'allagentsreviews_api_key_overall', 'allagentsreviews_api_url_reviews', 'allagentsreviews_api_url_overall', 'allagentsreviews_shortcode_container_bg', 'allagentsreviews_shortcode_text_color', 'allagentsreviews_widget_background_color', 'allagentsreviews_widget_text_color', 'allagentsreviews_overall_widget_background_color', 'allagentsreviews_overall_widget_text_color', 'allagentsreviews_review_cached_reviews', 'allagentsreviews_review_cached_reviews_overall');

