#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ticker_pro_options'
wp option delete '$options'
wp option delete 'map_option_1'
wp option delete 'map_option_2'
wp option delete 'map_option_3'
wp option delete 'map_option_4'
wp option delete 'map_option_5'
wp option delete 'map_option_6'
wp option delete 'ticker_pro_6489_db_version'
wp option delete '$ticker_pro_6489_db_version'

