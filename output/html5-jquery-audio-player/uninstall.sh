#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmp_player_db_table_version'
wp option delete 'hmp_player_db_table_rating_version'
wp option delete 'buy_text'
wp option delete 'color'
wp option delete 'showlist'
wp option delete 'showbuy'
wp option delete 'hmp_description'
wp option delete 'currency'
wp option delete 'tracks'
wp option delete 'tcolor'
wp option delete 'autoplay'

