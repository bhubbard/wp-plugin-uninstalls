#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emsfb_settings'
wp option delete 'emsfb_email_status'
wp option delete 'Emsfb_db_version'
wp option delete 'emsfb_pro'
wp option delete 'emsfb_version'

# Delete Transients
wp transient delete 'emsfb_settings_transient'

# Clear Cron Jobs
wp cron event delete 'delete_preview_page_efb'
wp cron event delete 'download_all_addons_efb'

