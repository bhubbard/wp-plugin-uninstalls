#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'redux-framework-tracking'
wp option delete 'redux_version_upgraded_from'
wp option delete 'redux_support_hash'
wp option delete 'recently_activated'
wp option delete 'amp_customizer'
wp option delete 'uamp_content_width'
wp option delete 'uamp_endpoint'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp transient delete 'redux_tracking_cache'
wp transient delete 'redux-extensions-fetch'
wp transient delete 'redux_contributors'
wp transient delete 'update_plugins'
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'redux_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uamp-override-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uamp-override-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uamp-override-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uamp-override-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uamp-custom-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uamp-custom-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uamp-custom-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uamp-custom-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uamp-override-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uamp-override-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uamp-override-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uamp-override-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uamp-custom-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uamp-custom-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uamp-custom-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uamp-custom-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uamp_featured_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uamp_featured_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uamp_featured_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uamp_featured_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uamp-exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uamp-exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uamp-exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uamp-exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
