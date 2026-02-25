#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_remote_api_key'
wp option delete 'update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

