#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'biz_hours_day_id'
wp option delete 'biz_hours_hour_id'
wp option delete 'biz_hours_range'
wp option delete 'biz_hours_range_hours'
wp option delete 'biz_hours_saturday'
wp option delete 'biz_hours_sunday'
wp option delete 'biz_hours_monday'
wp option delete 'biz_hours_tuesday'
wp option delete 'biz_hours_wednesday'
wp option delete 'biz_hours_thursday'
wp option delete 'biz_hours_friday'

