#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'altvision_settings'
wp option delete 'altvision_license_status'
wp option delete 'altvision_license_key'
wp option delete 'altvision_license_error'

# Delete Transients
wp transient delete 'altvision_license_check'
wp transient delete 'altvision_last_verify'

# Clear Cron Jobs
wp cron event delete 'altvision_check_license'
wp cron event delete 'altvision_daily_license_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'altvision_default_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'altvision_default_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'altvision_default_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'altvision_default_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
