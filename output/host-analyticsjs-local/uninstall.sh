#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caos_settings'

# Delete Transients
wp transient delete 'update_plugins'

