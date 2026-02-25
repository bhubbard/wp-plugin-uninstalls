#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'today_gift_details_page_id'

# Clear Cron Jobs
wp cron event delete 'today_gift_sufias_event'

