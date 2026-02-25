#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppo_settings'
wp option delete 'i365_po_settings'
wp option delete 'i365_po_settings_backups'
wp option delete 'i365_po_profiles'
wp option delete 'i365_po_db_version'

# Delete Transients
wp transient delete 'i365_po_local_fonts_cache'

# Clear Cron Jobs
wp cron event delete 'i365_po_scheduled_cleanup'

