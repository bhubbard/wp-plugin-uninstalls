#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'review_days_after_order'
wp option delete 'review_review_link'

# Clear Cron Jobs
wp cron event delete 'review_request_send_email'

