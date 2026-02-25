#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_permalinks_flushed'
wp option delete 'dps_integration_ngoid'
wp option delete 'dps_custom_css'
wp option delete 'dps_custom_js'

