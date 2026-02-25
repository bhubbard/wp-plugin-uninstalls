#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'urwc_map_scid_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'urwc_map_max_checkins_%'"
wp option delete 'urwc_map_show_infowindow_disclaimer'
wp option delete 'urwc_map_show_ratings_to_admin_only'
wp option delete 'urwc_map_add_product_link'
wp option delete 'urwc_map_cache_is_working'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_keys'"
wp option delete 'urwc_cache_time'
wp option delete 'urwc_ratelimit_remaining'
wp option delete 'urwc_client_id'
wp option delete 'urwc_client_secret'
wp option delete 'urwc_api_url'
wp option delete 'urwc_api_useragent'
wp option delete 'urwc_show_logo'
wp option delete 'urwc_ratings_enabled'
wp option delete 'urwc_ratings_sort_enabled'
wp option delete 'urwc_ratings_show_total'
wp option delete 'urwc_ratings_show_text'
wp option delete 'urwc_ratings_add_to_structured_data'
wp option delete 'urwc_ratings_structured_data_comments_only'

# Delete Transients
wp transient delete 'urwc_ratelimited'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urwc_beer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urwc_beer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urwc_beer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urwc_beer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urwc_beer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urwc_beer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urwc_beer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urwc_beer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urwc_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urwc_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urwc_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urwc_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urwc_beer_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urwc_beer_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urwc_beer_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urwc_beer_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urwc_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urwc_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urwc_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urwc_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urwc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urwc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urwc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urwc_average_rating'"
