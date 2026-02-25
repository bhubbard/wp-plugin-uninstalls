#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advausro_oauth2_settings'
wp option delete 'advausro_custom_capabilities'
wp option delete 'advausro_timezone_pending'
wp option delete 'advausro_timezone_string'
wp option delete 'advausro_gmt_offset'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_advausro_oauth2_state_%' OR option_name LIKE '_site_transient_advausro_oauth2_state_%'"

# Clear Cron Jobs
wp cron event delete 'advausro_check_expired_roles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advausro_original_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advausro_original_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advausro_original_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advausro_original_roles'"
