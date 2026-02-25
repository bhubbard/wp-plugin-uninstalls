#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relay_api_key'

# Delete Transients
wp transient delete 'health-check-site-status-result'
wp transient delete 'update_plugins'
wp transient delete 'relay_directory_sizes'

