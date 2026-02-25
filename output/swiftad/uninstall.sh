#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swiftad_config'
wp option delete 'swiftpost_license'
wp option delete 'swiftad_db_version'
wp option delete 'swiftad_version'
wp option delete 'swiftad_license'

# Delete Transients
wp transient delete 'swiftimpressions_license_check'

# Clear Cron Jobs
wp cron event delete 'swiftad_tasks_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftad_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftad_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftad_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftad_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftad_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftad_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftad_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftad_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftad_target_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftad_target_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftad_target_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftad_target_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftad_target_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftad_target_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftad_target_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftad_target_name'"
