#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%comment_campaign'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%comment_label'"

