#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpturbo_database'
wp option delete 'wpturbo_cdn'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp option delete 'wpturbo_reduce'
wp option delete 'wpturbo_storage'
wp option delete 'wb_wpturbo_promote'
wp option delete 'wb_wpturbo_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_wpturbo_cnf_%'"

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wpturbo_optimize_database'
wp cron event delete 'wpturbo_download_google_font'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb-oss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb-oss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb-oss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb-oss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
