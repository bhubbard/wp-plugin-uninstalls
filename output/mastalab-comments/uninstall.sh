#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertubecomments]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[mastodon_bg]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[mastodon_text]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[mastodon_link]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertube_bg]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertube_text]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertube_link]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[cache]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[selector]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%preferences[where]'"
wp option delete 'tom79_mastalab_comments_db_version'

