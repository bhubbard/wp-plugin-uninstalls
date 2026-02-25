#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'health-check-beta-features'
wp option delete 'health-check-disable-plugin-hash'
wp option delete 'health-check-default-theme'
wp option delete 'health-check-allowed-plugins'
wp option delete 'health-check-current-theme'
wp option delete 'health-check-dashboard-notices'
wp option delete 'health-check-backup-plugin-list'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'health-check-site-status-result'
wp transient delete 'health-check-checksums'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_php_check_%' OR option_name LIKE '_site_transient_php_check_%'"

# Clear Cron Jobs
wp cron event delete 'health-check-scheduled-site-status-check'

