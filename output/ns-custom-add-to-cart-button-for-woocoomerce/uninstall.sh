#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_change_addcart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

