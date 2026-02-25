#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-abmb'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-abmp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-abmsi'"

