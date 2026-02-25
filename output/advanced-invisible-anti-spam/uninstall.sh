#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aia_previous_field_key'
wp option delete 'aia_current_key'

# Clear Cron Jobs
wp cron event delete 'update_aia_key'

