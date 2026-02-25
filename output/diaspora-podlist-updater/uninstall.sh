#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpu-podlist'

# Clear Cron Jobs
wp cron event delete 'dpu_hook'

