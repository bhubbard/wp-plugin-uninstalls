#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dhswp_active_%'"
wp option delete 'dhswp_sortorder'
wp option delete 'dhswp_exclude'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dhswp_newname_%'"

