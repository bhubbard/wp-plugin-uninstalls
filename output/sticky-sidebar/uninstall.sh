#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ri_sticky_widget_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ri_sticky_widget_%'"

