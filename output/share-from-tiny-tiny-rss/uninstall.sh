#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%base'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%password'"

