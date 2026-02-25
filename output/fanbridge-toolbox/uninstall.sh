#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_required'"

