#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteguard_config'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

