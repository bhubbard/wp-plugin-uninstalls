#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_reviews_badge_place_id'
wp option delete 'simple_reviews_badge_api_key'
wp option delete 'simple_reviews_badge_img_src'
wp option delete 'simple_reviews_badge_cache_duration'
wp option delete 'simple_reviews_badge_review_link'
wp option delete 'simple_reviews_badge_schema_description'
wp option delete 'simple_reviews_badge_schema_name'
wp option delete 'simple_reviews_badge_schema_brand'
wp option delete 'simple_reviews_badge_schema_id'
wp option delete 'simple_reviews_badge_schema_url'
wp option delete 'simple_reviews_badge_use_ajax'

