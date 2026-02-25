#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allagentsreviews_review_settings'
wp option delete 'allagentsreviews_api_key_reviews'
wp option delete 'allagentsreviews_api_key_overall'
wp option delete 'allagentsreviews_api_url_reviews'
wp option delete 'allagentsreviews_api_url_overall'
wp option delete 'allagentsreviews_shortcode_container_bg'
wp option delete 'allagentsreviews_shortcode_text_color'
wp option delete 'allagentsreviews_widget_background_color'
wp option delete 'allagentsreviews_widget_text_color'
wp option delete 'allagentsreviews_overall_widget_background_color'
wp option delete 'allagentsreviews_overall_widget_text_color'

# Delete Transients
wp transient delete 'allagentsreviews_review_cached_reviews'
wp transient delete 'allagentsreviews_review_cached_reviews_overall'

