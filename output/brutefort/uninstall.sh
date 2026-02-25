#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brutef_whitelisted_ips'
wp option delete 'brutef_setup_wizard_completed'
wp option delete 'brutef_rate_limit_settings'
wp option delete 'brutef_geo_settings'
wp option delete 'brutef_login_url_settings'

# Delete Transients
wp transient delete 'brutefort_activation_redirect'
wp transient delete 'brutef_free_activated'

# Clear Cron Jobs
wp cron event delete 'brutef_cleanup_logs'
wp cron event delete 'brutef_license_check'
wp cron event delete 'brutef_update_check'
wp cron event delete 'brutefort_cleanup_logs'
wp cron event delete 'brutefort_license_check'
wp cron event delete 'brutefort_update_check'

