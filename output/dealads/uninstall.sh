#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpda_region'
wp option delete 'wpda_legal'
wp option delete 'wpda_window'
wp option delete 'wpda_updated'
wp option delete 'wpda_data'

# Clear Cron Jobs
wp cron event delete 'wpda_cron_hook'

