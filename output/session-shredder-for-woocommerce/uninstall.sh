#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'session_shredder_base_age_hours'
wp option delete 'session_shredder_hard_timeout_hours'
wp option delete 'session_shredder_bounce_max_pageviews'
wp option delete 'session_shredder_bounce_max_cart_value'
wp option delete 'session_shredder_protect_min_cart_value'
wp option delete 'session_shredder_stats'
wp option delete 'woocommerce_experimental_guest_sessions'

# Clear Cron Jobs
wp cron event delete 'session_shredder_cron'

