#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%LogToError'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%LogToConsole'"
wp option delete 'cookieman_cmp_version'

