#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgpwpp_wp_cache'
wp option delete 'wgpwpp_cdn_cache'
wp option delete 'wgpwpp_rating_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-flashes'"
wp option delete 'wgpwpp_reports'
wp option delete 'wgpwpp_activation_time'
wp option delete 'wplang'
wp option delete 'site_name'

# Clear Cron Jobs
wp cron event delete 'wgpwpp_cache_delete_expired'

