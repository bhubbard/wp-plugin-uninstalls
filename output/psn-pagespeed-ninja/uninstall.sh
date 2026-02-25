#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagespeedninja_config'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'pagespeedninja_dismiss_licensekey_notice'
wp transient delete 'pagespeedninja_psi_scores'
wp transient delete 'pagespeedninja_activated'
wp transient delete 'pagespeedninja_show_tour'

# Clear Cron Jobs
wp cron event delete 'pagespeedninja_daily_event'

