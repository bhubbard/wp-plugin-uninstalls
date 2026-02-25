#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blockformat_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'adv_button_%'"

