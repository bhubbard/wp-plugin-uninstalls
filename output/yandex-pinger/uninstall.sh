#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%searchId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pluginId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message'"

