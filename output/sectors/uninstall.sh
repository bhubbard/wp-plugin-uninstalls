#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qtranslate_enabled_languages'

# Clear Cron Jobs
wp cron event delete 'wpca/cache_condition_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ca_handle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
