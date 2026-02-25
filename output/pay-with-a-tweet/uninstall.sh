#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_consumerkey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_consumersecret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

