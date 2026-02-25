#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%map_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%zoom'"

