#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete '_quadmenu_compiler'
wp option delete 'quadmenu_admin_notices'
wp option delete 'quadmenu_redux_notices'
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'redux-framework-tracking'
wp option delete 'redux_version_upgraded_from'
wp option delete 'redux_support_hash'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp transient delete '_quadmenu_redirect'
wp transient delete '_quadmenu_first_rating'
wp transient delete '_quadmenu_activation'
wp transient delete '_quadmenu_saved_reload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp transient delete 'reduxlegacy_tracking_cache'
wp transient delete 'redux-extensions-fetch'
wp transient delete 'redux_contributors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

# Clear Cron Jobs
wp cron event delete 'reduxlegacy_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
