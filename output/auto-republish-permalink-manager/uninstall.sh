#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arpmp_post_type_cron'
wp option delete 'arpmp_republish_interval'
wp option delete 'arpmp_posts_per_batch'
wp option delete 'arpmp_max_republish_per_day'
wp option delete 'arpmp_enable_permalink_change'
wp option delete 'arpmp_pause_auto_republish'
wp option delete 'arpmp_date_update_mode'
wp option delete 'arpmp_republish_order'

# Delete Transients
wp transient delete 'arpmp_republish_count_today'

# Clear Cron Jobs
wp cron event delete 'arpmp_auto_republish'

