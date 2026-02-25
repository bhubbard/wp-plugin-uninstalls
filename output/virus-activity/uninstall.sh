#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lastFeed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nextFeedFetchTime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_numberOfTries'"

