#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_padding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_mobile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable'"

