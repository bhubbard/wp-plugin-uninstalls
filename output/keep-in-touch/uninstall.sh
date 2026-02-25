#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keep_in_touch_use_anti_robot_page'
wp option delete 'keep_in_touch_use_full_name'
wp option delete 'keep_in_touch_subscription_confirmation_text'
wp option delete 'keep_in_touch_send_empty_digest_message'
wp option delete 'keep_in_touch_empty_digest_message_text'
wp option delete 'keep_in_touch_delivery_weekday'
wp option delete 'keep_in_touch_delivery_time'
wp option delete 'keep_in_touch_header_image_option'
wp option delete 'keep_in_touch_header_image_custom_path'

# Clear Cron Jobs
wp cron event delete 'keep_in_touch_daily_event_hook'
wp cron event delete 'keep_in_touch_weekly_event_hook'

