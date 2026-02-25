#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wms7_main_settings'
wp option delete 'wms7_backend'
wp option delete 'wms7_frontend'
wp option delete 'wms7_visitors_per_page'
wp option delete 'wms7_screen_settings'
wp option delete 'wms7_search'
wp option delete 'wms7_current_url'
wp option delete 'wms7_cron'
wp option delete 'cron'
wp option delete 'wms7_console'

# Clear Cron Jobs
wp cron event delete 'wms7_truncate'
wp cron event delete 'wms7_htaccess'

