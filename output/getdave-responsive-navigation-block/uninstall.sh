#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_nav_breakpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_nav_unit'"

