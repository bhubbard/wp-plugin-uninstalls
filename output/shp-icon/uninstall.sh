#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-display-inline-top-shift'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-display-inline-scale-factor'"

