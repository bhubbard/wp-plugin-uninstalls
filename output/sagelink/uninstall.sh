#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sage82in_enable_posts'
wp option delete 'sage82in_enable_pages'
wp option delete 'sage82in_enable_comments'
wp option delete 'sage82in_link_targets'
wp option delete 'sage82in_ignore_words'
wp option delete 'sage82in_max_links'
wp option delete 'sage82in_max_single'
wp option delete 'sage82in_custom_keywords'
wp option delete 'sage82in_nofollow'
wp option delete 'sage82in_target_blank'
wp option delete 'sage82in_prevent_self_link'
wp option delete 'sage82in_custom_post_types'
wp option delete 'sage82in_blacklist_posts'
wp option delete 'sage82in_blacklist_categories'
wp option delete 'sage82in_synonyms'
wp option delete 'sage82in_link_preference'
wp option delete 'sage82in_date_range_days'

# Delete Transients
wp transient delete 'sage82in_keywords_cache'

