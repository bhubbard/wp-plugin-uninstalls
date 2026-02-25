#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crfs_facebook_url'
wp option delete 'crfs_instagram_url'
wp option delete 'crfs_twitter_url'
wp option delete 'crfs_linkedin_url'
wp option delete 'crfs_youtube_url'
wp option delete 'crfs_rss_url'
wp option delete 'crfs_pinterest_url'
wp option delete 'crfs_behance_url'
wp option delete 'crfs_github_url'
wp option delete 'crfs_reddit_url'
wp option delete 'crfs_stackoverflow_url'
wp option delete 'crfs_tumblr_url'
wp option delete 'crfs_vine_url'
wp option delete 'crfs_primary_color'
wp option delete 'crfs_secondary_color'
wp option delete 'crfs_position'

