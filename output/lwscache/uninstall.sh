#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rt_wp_lws_cache_options'
wp option delete 'rt_wp_lws_cache_init_check'
wp option delete 'lws_cache_poweredcache_addons'
wp option delete 'lws_cache_wprocket_addons'
wp option delete 'lwscache_do_not_ask_again'
wp option delete 'lwscache_excluded_urls'

# Delete Transients
wp transient delete 'lwscache_remind_me'

# Clear Cron Jobs
wp cron event delete 'rt_wp_lws_cache_check_log_file_size_daily'

