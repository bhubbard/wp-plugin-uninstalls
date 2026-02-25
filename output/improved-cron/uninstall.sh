#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imcron_settings'

# Clear Cron Jobs
wp cron event delete 'imcron_bgp'

