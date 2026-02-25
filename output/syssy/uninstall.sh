#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syssy_api_key'

# Delete Transients
wp transient delete 'update_plugins'

