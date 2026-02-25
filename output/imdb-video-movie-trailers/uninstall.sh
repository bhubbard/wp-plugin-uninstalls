#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cinemabase_players'
wp option delete 'cinemabase_token'
wp option delete 'cinemabase_excerpt'
wp option delete 'cinemabase_welcome_notice'

