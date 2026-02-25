#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'igml_settings'

# Clear Cron Jobs
wp cron event delete 'igml_cron_hook'

