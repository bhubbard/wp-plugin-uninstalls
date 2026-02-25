#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbpn_settings_v1'

# Delete Transients
wp transient delete 'tbpn_test_results'
wp transient delete 'tbpn_activation_notice'

# Clear Cron Jobs
wp cron event delete 'tbpn_cleanup_old_notifications'

