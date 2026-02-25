#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chronological_spam_removal'

# Clear Cron Jobs
wp cron event delete 'chronological_spam_removal'

