#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'plugins_list'
wp transient delete 'artiss_plugins_list'

