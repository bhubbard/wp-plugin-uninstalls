#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fincart_use_default_pickup_loc'
wp option delete 'fincart_api_token'
wp option delete 'fincart_city_area'
wp option delete 'fincart_show_tracking_info_on_frontend'
wp option delete 'fincart_send_orders_automatically'
wp option delete 'fincart_open_package'
wp option delete 'fincart_description_format'
wp option delete 'fincart_api_token_validation'

# Clear Cron Jobs
wp cron event delete 'fincart_daily_check_api_token'

