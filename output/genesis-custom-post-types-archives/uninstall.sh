#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcpta-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcpta-settings-%'"

