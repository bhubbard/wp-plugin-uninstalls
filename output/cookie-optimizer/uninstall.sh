#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookie_opt_banner_active'
wp option delete 'cookie_opt_id'
wp option delete 'cookie_opt_do_not_sell_page'
wp option delete 'cookie_opt_first_setting'
wp option delete 'cookie_opt_statistics'
wp option delete 'cookie_opt_geolocation_setting'
wp option delete 'cookie_opt_version'
wp option delete 'cookie_opt_views'
wp option delete 'cookie_opt_deactivation'

# Delete Transients
wp transient delete 'msg-cookie-opt'
wp transient delete 'validate-err'
wp transient delete 'successUpdate'
wp transient delete 'packageUser'
wp transient delete 'successDelate'
wp transient delete 'errorsForUpdate'
wp transient delete 'errorsForCreate'
wp transient delete 'successCreate'

# Clear Cron Jobs
wp cron event delete 'opt_cookie_id_check_daily_event'
wp cron event delete 'cookie_opt_check_daily_event'
wp cron event delete 'opt_cookie_my_daily_event'

