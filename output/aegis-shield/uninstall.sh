#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aegis_shield_failed_logins'
wp option delete 'aegis_shield_cron_enabled'
wp option delete 'aegis_shield_cron_frequency'
wp option delete 'aegis_shield_last_cron_scan'
wp option delete 'aegis_shield_license_key'

# Clear Cron Jobs
wp cron event delete 'aegis_shield_cron_scan'

