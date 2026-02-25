#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AiomlSmack_default_%'"

