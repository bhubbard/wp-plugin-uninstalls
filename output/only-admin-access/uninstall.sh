#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_homepage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_send404s'"

