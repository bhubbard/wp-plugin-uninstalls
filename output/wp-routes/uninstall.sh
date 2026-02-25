#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_urbangiraffe_rss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_available_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_config_%'"

