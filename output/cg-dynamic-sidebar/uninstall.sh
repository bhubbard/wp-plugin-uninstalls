#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_widget_1'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'custom_widget_%'"

