#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'honeypot_guard_options'
wp option delete 'honeypot_guard_db_version'
wp option delete 'honeypot_guard_installed_at'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_honeypot_guard_registration_success_%' OR option_name LIKE '_site_transient_honeypot_guard_registration_success_%'"

# Clear Cron Jobs
wp cron event delete 'honeypot_guard_cleanup_logs'

