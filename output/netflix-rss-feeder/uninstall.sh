#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'netflix_rss'
wp option delete 'netflix_moviesathome'
wp option delete 'netflix_queue'
wp option delete 'netflix_notifications'
wp option delete 'netflix_recommendations'
wp option delete 'netflix_reviews'
wp option delete 'netflix_instant'
wp option delete 'netflix_moviesathome_number'
wp option delete 'netflix_queue_number'
wp option delete 'netflix_notifications_number'
wp option delete 'netflix_recommendations_number'
wp option delete 'netflix_reviews_number'
wp option delete 'netflix_instant_number'
wp option delete 'moviesathome_desc'
wp option delete 'queue_desc'
wp option delete 'notifications_desc'
wp option delete 'recommendations_desc'
wp option delete 'reviews_desc'
wp option delete 'instant_desc'

