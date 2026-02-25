#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wata_lasttimestamp'
wp option delete 'wata_featured_movies'
wp option delete 'wata_tuser'
wp option delete 'wata_apikey'
wp option delete 'wata_first_date'
wp option delete 'wata_personnalratings'
wp option delete 'wata_trailer'
wp option delete 'wata_overview'
wp option delete 'wata_poster'
wp option delete 'wata_fanart'
wp option delete 'wata_post_status'
wp option delete 'wata_authorid'
wp option delete 'wata_post_date'
wp option delete 'wata_fanart_as_post_featured_image'
wp option delete 'wata_post_title_template'
wp option delete 'wata_post_content_template'
wp option delete 'wata_post_excerpt_template'
wp option delete 'wata_post_signature_option'
wp option delete 'wata_post_signature_template'
wp option delete 'wata_post_categories'
wp option delete 'wata_post_tags'
wp option delete 'wata_movie_featuring_tag'
wp option delete 'wata_movie_featured_number'

# Clear Cron Jobs
wp cron event delete 'wata_twicedaily_event_hook'

