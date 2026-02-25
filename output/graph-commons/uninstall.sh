#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gc-api_key'

# Delete Transients
wp transient delete 'graphcommons_hubs'

