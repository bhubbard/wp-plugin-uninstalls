#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_menu_type'"

