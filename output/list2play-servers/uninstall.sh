#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'list2play_api_base_url'
wp option delete 'list2play_api_token'
wp option delete 'list2play_cache_duration'
wp option delete 'list2play_send_metadata'
wp option delete 'list2play_default_per_page'
wp option delete 'list2play_show_hostname'
wp option delete 'list2play_show_status'
wp option delete 'list2play_show_address'
wp option delete 'list2play_show_game'
wp option delete 'list2play_show_region'
wp option delete 'list2play_show_players'
wp option delete 'list2play_show_map'
wp option delete 'list2play_show_votes'
wp option delete 'list2play_show_chart'
wp option delete 'list2play_show_stats'
wp option delete 'list2play_show_vote_button'
wp option delete 'list2play_selected_server_ids'
wp option delete 'list2play_server_order'

