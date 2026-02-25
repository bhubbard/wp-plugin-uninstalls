#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%role_conf'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%offline_set'"

