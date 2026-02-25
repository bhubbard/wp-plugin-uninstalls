#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdesk_settings'
wp option delete 'pdesk_manual_cookies'
wp option delete 'pdesk_scanned_cookies'

# Delete Transients
wp transient delete 'pdesk_consent_stats'
wp transient delete 'pdesk_cookie_scan_results'

# Clear Cron Jobs
wp cron event delete 'pdesk_cleanup_usage_limits'

