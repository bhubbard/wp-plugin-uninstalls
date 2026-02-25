#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_site_transient_update_plugins'

# Delete Transients
wp transient delete 'update_core'

