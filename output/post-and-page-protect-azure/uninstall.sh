#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_ad_protect_%'"
wp option delete 'sm_session_db_version'

# Clear Cron Jobs
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_azure_ad_protect_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_azure_ad_protect_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_azure_ad_protect_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_azure_ad_protect_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_azure_ad_protect_directory_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_azure_ad_protect_directory_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_azure_ad_protect_directory_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_azure_ad_protect_directory_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_azure_ad_protect_application_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_azure_ad_protect_application_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_azure_ad_protect_application_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_azure_ad_protect_application_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_azure_ad_protect_application_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_azure_ad_protect_application_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_azure_ad_protect_application_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_azure_ad_protect_application_secret'"
