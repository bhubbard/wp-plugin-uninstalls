#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alith_option'
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'redux-framework-tracking'
wp option delete 'wbc_imported_demos'
wp option delete 'wbc_import_progress'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'redux_version_upgraded_from'
wp option delete 'redux_support_hash'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp transient delete 'redux_tracking_cache'
wp transient delete 'redux-extensions-fetch'
wp transient delete '_redux_activation_redirect'
wp transient delete 'redux_contributors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_st_instagram_%' OR option_name LIKE '_site_transient_st_instagram_%'"
wp transient delete 'aliththeme_alith_tweet_feed'

# Clear Cron Jobs
wp cron event delete 'redux_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
