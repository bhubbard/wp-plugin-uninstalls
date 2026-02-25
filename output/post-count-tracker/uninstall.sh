#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pct_shortcode_option'
wp option delete 'pct_views_text'
wp option delete 'pct_views_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pct_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pct_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pct_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pct_post_views_count'"
