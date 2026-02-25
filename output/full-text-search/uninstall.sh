#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'full_text_search_options'

# Clear Cron Jobs
wp cron event delete 'full_text_search_event'

