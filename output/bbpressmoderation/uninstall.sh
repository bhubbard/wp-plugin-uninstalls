#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_display'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notify'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_approve_topics'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_approve_replies'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%previously_approved'"

