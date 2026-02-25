#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_groups'
wp option delete 'plugin_groups_match'
wp option delete 'groups_plugin_match'
wp option delete 'plugin_locked'
wp option delete 'plugin_hidden'
wp option delete '_plugin-manager_'
wp option delete 'PIGPR_VERSION_NUM'

# Delete Transients
wp transient delete 'update_plugins'

