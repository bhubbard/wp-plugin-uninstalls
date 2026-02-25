#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'userlogs_welcome'
wp option delete 'userlogs_cron_cycle'

# Delete Transients
wp transient delete 'userlogs_activation_redirect_transient'

# Clear Cron Jobs
wp cron event delete 'purge_user_logs_cron'

