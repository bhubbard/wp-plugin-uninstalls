#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmnsc_url'

# Clear Cron Jobs
wp cron event delete 'dmnsc_update_wordfence_allowlist_daily'

