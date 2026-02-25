#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'novocall-widget-active-novocall'
wp option delete 'novocall-widget-code-novocall'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-active-novocall'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-code-novocall'"

