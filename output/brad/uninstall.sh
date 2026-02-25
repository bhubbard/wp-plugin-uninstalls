#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brad_dismiss_notice'

# Clear Cron Jobs
wp cron event delete 'check_dismissed'

