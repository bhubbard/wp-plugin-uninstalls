#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_update_ignore'
wp option delete 'update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

