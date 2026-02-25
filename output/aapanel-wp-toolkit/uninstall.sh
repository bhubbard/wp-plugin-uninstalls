#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_themes'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_themes'
wp transient delete 'update_plugins'

