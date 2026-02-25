#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfo_lock_settings'
wp option delete 'gfo_lock_network_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'guten_free_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sidebar_options'"
wp option delete 'network_default_editor'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ads_box_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donation_box_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_report_box_off'"

# Delete Transients
wp transient delete 'wordquest_plugin_info'
wp transient delete 'update_plugins'
wp transient delete 'wordquest_guides_feed'
wp transient delete 'wordquest_quest_feed'
wp transient delete 'pluginreview_newest_feed'
wp transient delete 'prn_feed'
wp transient delete 'pluginreview_updated_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_editor_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_editor_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_editor_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_editor_override'"
