#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'groups_plugin_version'
wp option delete 'groups_delete_data'

# Delete Transients
wp transient delete 'groups_plugin_updated_legacy'
wp transient delete 'groups_plugin_activated'
wp transient delete 'groups_plugin_updated'
wp transient delete 'groups_utility_tree'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'groups-join-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'groups-join-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'groups-join-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'groups-join-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'groups-leave-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'groups-leave-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'groups-leave-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'groups-leave-data'"
