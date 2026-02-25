#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donated_width'"

