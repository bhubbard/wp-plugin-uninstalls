#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wetravel_trips_env'
wp option delete 'wetravel_trips_slug'
wp option delete 'wetravel_trips_designs'
wp option delete 'wetravel_trips_items_per_slide'
wp option delete 'wetravel_trips_items_per_row'
wp option delete 'wetravel_trips_items_per_page'
wp option delete 'wetravel_trips_border_radius'
wp option delete 'wetravel_trips_embed_code'
wp option delete 'wetravel_trips_last_saved'
wp option delete 'wetravel_trips_user_id'
wp option delete 'wetravel_trips_src'
wp option delete 'wetravel_trips_display_type'
wp option delete 'wetravel_trips_button_type'
wp option delete 'wetravel_trips_button_color'
wp option delete 'wetravel_trips_load_more_text'
wp option delete 'wetravel_trips_search_visibility'

# Clear Cron Jobs
wp cron event delete 'wetravel_trips_daily_cleanup'

