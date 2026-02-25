#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'admin_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_settings'"

