#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tecs_activation_redirect'
wp option delete 'ecs-show-link'
wp option delete 'ecs_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%'"
wp option delete 'wisdom_last_track_time'
wp option delete 'wisdom_allow_tracking'
wp option delete 'wisdom_notification_times'
wp option delete 'wisdom_block_notice'
wp option delete 'wisdom_collect_email'
wp option delete 'wisdom_admin_emails'

# Delete Transients
wp transient delete 'tecs_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'put_do_weekly_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_featured'"
