#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_virtualtours_tours'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_virtualtours_tour_%'"

