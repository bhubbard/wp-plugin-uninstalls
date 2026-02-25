#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoptimize_html'
wp option delete 'autoptimize_css'
wp option delete 'autoptimize_js'
wp option delete 'peadig_eucookie'
wp option delete 'jetpack_boost_config'
wp option delete 'woocommerce_default_customer_address'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'powered_cache_preload_hook'
wp cron event delete 'powered_cache_preload_child_process'
wp cron event delete 'powered_cache_purge_cache'

