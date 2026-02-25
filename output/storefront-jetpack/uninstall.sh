#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfjp_mods_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfx-align-menu-right-%'"
wp option delete 'sfx-align-menu-right'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"

