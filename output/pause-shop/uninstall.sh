#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pause_shop_periodicity'
wp option delete 'pause_shop_begin_date'
wp option delete 'pause_shop_timezone'
wp option delete 'pause_shop_scheduled_pause_enabled'
wp option delete 'pause_shop_begin_time'
wp option delete 'pause_shop_end_time'
wp option delete 'pause_shop_on_demand_paused'
wp option delete 'pause_shop_schedule_paused'

