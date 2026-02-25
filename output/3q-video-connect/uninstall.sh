#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%root_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pager'"
wp option delete 'sdn_options'

