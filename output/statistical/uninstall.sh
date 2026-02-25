#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_of_days_since_first_post'
wp option delete 'total_no_of_words_in_blog'
wp option delete 'total_no_posts_since_start'
wp option delete 'avg_words_published_per_day'

