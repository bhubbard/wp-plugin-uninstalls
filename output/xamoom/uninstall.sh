#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xamoom_api_key'
wp option delete 'xamoom_custom_css'

# Delete Transients
wp transient delete 'xamoom-plugin-activated'

