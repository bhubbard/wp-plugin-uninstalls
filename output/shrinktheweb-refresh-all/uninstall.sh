#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stw_cron_option'
wp option delete 'stw_timstamp_options_page'
wp option delete 'stw_time_check_images'
wp option delete 'WPPortfolio_setting_stw_access_key'
wp option delete 'WPPortfolio_setting_stw_secret_key'
wp option delete 'pptimage'
wp option delete 'imagestorage_link'
wp option delete 'imagestorage_path'
wp option delete 'stw_refresh_last_timestamp'
wp option delete 'stw_doing_refresh'
wp option delete 'WPPortfolio_setting_stw_thumb_size'

# Clear Cron Jobs
wp cron event delete 'wpstw_cron'
wp cron event delete 'stw_cron_cache'

