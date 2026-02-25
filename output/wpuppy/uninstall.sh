#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpuppy_key'
wp option delete 'wpuppy_setup'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'

