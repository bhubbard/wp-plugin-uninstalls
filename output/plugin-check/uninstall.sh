#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_check_ai_credentials'

# Delete Transients
wp transient delete 'wp_plugin_check_latest_version_info'

