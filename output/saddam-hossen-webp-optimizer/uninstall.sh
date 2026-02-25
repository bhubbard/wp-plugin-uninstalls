#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%quality'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max_w'"

