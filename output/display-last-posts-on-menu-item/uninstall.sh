#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlpom_menu_id'
wp option delete 'dlpom_menu_item_id'
wp option delete 'dlpom_number_of_posts'
wp option delete 'dlpom_schedule_date'
wp option delete 'dlpom_repeat_interval'
wp option delete 'dlpom_schedule_enabled'

# Clear Cron Jobs
wp cron event delete 'dlpom_scheduled_task'

