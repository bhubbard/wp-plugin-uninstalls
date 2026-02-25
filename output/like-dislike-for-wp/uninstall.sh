#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'like_dislike_vote_tracking_enabled'
wp option delete 'like_dislike_hide_dislike_btn'
wp option delete 'like_dislike_for_wp_db_version'

