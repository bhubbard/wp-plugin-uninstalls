#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ifttt_bridge_options'
wp option delete 'ifttt_bridge_log'

# Delete Transients
wp transient delete 'settings_errors'

