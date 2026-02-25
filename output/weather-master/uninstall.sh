#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weather_master_view_basic_ds_detail_choice'
wp option delete 'weather_master_load_basic_ds_city'
wp option delete 'weather_master_load_basic_ds_state'
wp option delete 'weather_master_load_basic_ds_country'
wp option delete 'tsm_quote'

