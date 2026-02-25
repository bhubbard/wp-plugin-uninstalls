#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbforms_hide_review_notice'
wp option delete 'bbforms_install_date'
wp option delete 'bbforms_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bbforms_cache_%'"
wp option delete 'items_per_page'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bbforms_plugins_api'

# Clear Cron Jobs
wp cron event delete 'bbforms_auto_submissions_cleanup_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbforms_anonymize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbforms_anonymize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbforms_anonymize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbforms_anonymize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
