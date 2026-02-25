#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_place_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_initial_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_demo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_limit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_sort'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_sort_admin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_min'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_max'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_text_min'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_text_max'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_text_excerpt_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reviews_theme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_view'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_color_scheme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_javascript'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stylesheet'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_telephone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_price_range'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_places'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_structured_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retrieval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retrieval_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retrieval_sort'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retrieval_translate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result_valid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reviews'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_section'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_editor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_local_images'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_styles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta_box_limit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_related_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_additional_array_sanitization'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_force'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_place_delete'"
wp option delete 'google_business_reviews_rating_place_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_limit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%result'"
wp option delete 'wpseo_titles'
wp option delete 'we_are_open_api_key'
wp option delete 'we_are_open_place_id'
wp option delete 'grw_google_api_key'
wp option delete 'wpfbr_google_options'
wp option delete 'googleplacesreviews_options'
wp option delete 'google_places_api_key'
wp option delete 'trustindex-google-page-details'
wp option delete 'trustindex-google-lang'
wp option delete 'google_business_reviews_rating_api_key'
wp option delete 'google_business_reviews_rating_language'
wp option delete 'google_business_reviews_rating_retrieval_translate'
wp option delete 'google_business_reviews_rating_update'
wp option delete 'google_business_reviews_rating_reviews_theme'
wp option delete 'google_business_reviews_rating_stylesheet'
wp option delete 'google_business_reviews_rating_review_limit'
wp option delete 'google_business_reviews_rating_view'
wp option delete 'google_business_reviews_rating_review_sort'
wp option delete 'google_business_reviews_rating_rating_min'
wp option delete 'google_business_reviews_rating_rating_max'
wp option delete 'google_business_reviews_rating_review_text_min'
wp option delete 'google_business_reviews_rating_review_text_max'
wp option delete 'google_business_reviews_rating_review_text_excerpt_length'
wp option delete 'google_business_reviews_rating_color_scheme'
wp option delete 'google_business_reviews_rating_icon'
wp option delete 'google_business_reviews_rating_retrieval_sort'
wp option delete 'google_business_reviews_rating_structured_data'
wp option delete 'google_business_reviews_rating_telephone'
wp option delete 'google_business_reviews_rating_business_type'
wp option delete 'google_business_reviews_rating_price_range'
wp option delete 'google_business_reviews_rating_logo'
wp option delete 'google_business_reviews_rating_local_images'
wp option delete 'google_business_reviews_rating_additional_array_sanitization'
wp option delete 'google_business_reviews_rating_demo'
wp option delete 'google_business_reviews_rating_custom_styles'
wp option delete 'google_business_reviews_rating_javascript'
wp option delete 'google_business_reviews_rating_editor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_more'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_view'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_maybe_unserialize_test' OR option_name LIKE '_site_transient_%_maybe_unserialize_test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_welcome' OR option_name LIKE '_site_transient_%_welcome'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_reviews_shuffled' OR option_name LIKE '_site_transient_%_reviews_shuffled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_avatars_downloaded' OR option_name LIKE '_site_transient_%_avatars_downloaded'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_force' OR option_name LIKE '_site_transient_%_force'"

# Clear Cron Jobs
wp cron event delete 'google_business_reviews_rating_run'

