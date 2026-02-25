#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rocket_settings'
wp option delete 'complianz_options_custom-scripts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"

