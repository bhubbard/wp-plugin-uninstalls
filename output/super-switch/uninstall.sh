#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'clss_options'
wp option delete 'update_core'
wp option delete 'update_plugins'
wp option delete 'update_themes'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

