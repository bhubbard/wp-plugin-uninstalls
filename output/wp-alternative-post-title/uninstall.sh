#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wapt_premium_status'
wp option delete 'wapt_license_status'
wp option delete 'wapt_last_checked'
wp option delete 'wapt_license_key'
wp option delete 'wapt_license_message'
wp option delete 'wapt_license_expires'
wp option delete 'wapt_alt_title_locations'
wp option delete 'wapt_gemini_api_key'

# Delete Transients
wp transient delete 'wapt_is_licensed'

# Clear Cron Jobs
wp cron event delete 'wapt_check_license_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alternative_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alternative_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alternative_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alternative_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_alt_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_alt_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_alt_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_alt_title'"
