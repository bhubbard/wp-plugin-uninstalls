#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-adminbar-enabled'
wp option delete 'custom-adminbar-bump'
wp option delete 'custom-adminbar-styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'custom-adminbar-%'"

