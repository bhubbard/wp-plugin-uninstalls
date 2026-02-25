#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flash_games_top_games'
wp option delete 'flash_games_top_num'
wp option delete 'flash_games_new_games'
wp option delete 'flash_games_link'
wp option delete 'flash_games_new_num'

