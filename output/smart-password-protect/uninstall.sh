#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sppwp_options'
wp option delete 'sppwp_active_features'
wp option delete 'sppwp_temp_login_settings'
wp option delete 'sppwp_temp_logins'
wp option delete 'sppwp_version'

# Delete Transients
wp transient delete 'sppwp_activation_redirect'
wp transient delete 'sppwp_update_redirect'

# Clear Cron Jobs
wp cron event delete 'sppwp_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sppwp_is_temp_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sppwp_is_temp_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sppwp_is_temp_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sppwp_is_temp_user'"
