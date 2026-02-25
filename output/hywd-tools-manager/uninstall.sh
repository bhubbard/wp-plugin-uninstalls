#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'license-%'"

# Delete Transients
wp transient delete 'hywd_plugin_api_info'

