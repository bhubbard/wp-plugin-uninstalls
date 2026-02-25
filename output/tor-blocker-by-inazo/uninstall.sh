#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inazo.real.tor.blocker_db_version'

# Clear Cron Jobs
wp cron event delete 'inazo_tor_clean_logs'

