#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_minimalistic'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_minimalistic_ver2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table'"

