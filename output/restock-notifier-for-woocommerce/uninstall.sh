#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'restocknotifierpcprajapat_settings'
wp option delete 'restocknotifierpcprajapat_activation_check'
wp option delete 'restocknotifierpcprajapat_setup_defaults'

# Delete Transients
wp transient delete 'restocknotifierpcprajapat_wc_missing_notice'

# Clear Cron Jobs
wp cron event delete 'restocknotifierpcprajapat_cron_send_batch'

