#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mt_posts_per_page'
wp option delete 'twiogle_make_no_follow'
wp option delete 'link_back_to_profile'
wp option delete 'remove_hashtags'
wp option delete 'twiogle_commenter_db_version'

# Clear Cron Jobs
wp cron event delete 'twiogle_find_and_post_comments'

