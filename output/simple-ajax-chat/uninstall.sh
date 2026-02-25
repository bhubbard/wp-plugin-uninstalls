#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sac_export'
wp option delete 'sac_options'
wp option delete 'sac_censors'
wp option delete 'simple-ajax-chat-dismiss-notice'

# Delete Transients
wp transient delete 'sac_logged_users'

# Clear Cron Jobs
wp cron event delete 'sac_cron_truncate'

