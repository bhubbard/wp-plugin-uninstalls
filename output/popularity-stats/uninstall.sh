#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'horshipsrectors_popularity_track_pagerank'
wp option delete 'horshipsrectors_popularity_track_alexa'
wp option delete 'horshipsrectors_popularity_track_links'
wp option delete 'horshipsrectors_popularity_daystocheck'
wp option delete 'horshipsrectors_popularity_daystodisplay'
wp option delete 'horshipsrectors_popularity_checker_google_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'horshipsrectors_popularity_checker_google_value_%'"
wp option delete 'horshipsrectors_popularity_checker_alexa_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'horshipsrectors_popularity_checker_alexa_rank_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'horshipsrectors_popularity_checker_alexa_links_%'"

