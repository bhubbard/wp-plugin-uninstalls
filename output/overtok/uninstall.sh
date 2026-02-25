#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%global_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%global_code_sdk_i'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%global_method'"

