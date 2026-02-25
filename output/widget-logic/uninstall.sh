#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_logic_settings_options'
wp option delete 'widget_logic'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

