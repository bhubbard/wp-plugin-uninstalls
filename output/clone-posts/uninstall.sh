#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clone_posts_post_status'
wp option delete 'clone_posts_post_date'
wp option delete 'clone_posts_post_type'

