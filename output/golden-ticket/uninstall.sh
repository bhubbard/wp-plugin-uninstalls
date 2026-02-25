#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-display_mode_delay'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-display_mode_visible'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-display_mode_mouse_over'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-delay_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ticket_url_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ticket_count'"

