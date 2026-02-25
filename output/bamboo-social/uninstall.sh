#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%initialised'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%twitter_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%facebook_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%google_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%linkedin_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%instagram_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pinterest_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tumblr_link'"

