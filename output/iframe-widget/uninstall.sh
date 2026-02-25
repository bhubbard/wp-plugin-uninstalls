#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scrolling'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%style'"

