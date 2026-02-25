#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whippet_options'
wp option delete 'sgal_tracking_id'
wp option delete 'sgal_adjusted_bounce_rate'
wp option delete 'sgal_script_position'
wp option delete 'sgal_enqueue_order'
wp option delete 'sgal_anonymize_ip'
wp option delete 'sgal_track_admin'
wp option delete 'caos_remove_wp_cron'
wp option delete 'caos_disable_display_features'
wp option delete 'whippet_Issue_1'
wp option delete 'whippet_Issue_2'
wp option delete 'Activated_Plugin'
wp option delete 'whippet_db_version'

# Clear Cron Jobs
wp cron event delete 'update_local_ga'

