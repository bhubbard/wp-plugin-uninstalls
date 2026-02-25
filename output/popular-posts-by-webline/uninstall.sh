#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wli_popular_posts_options'
wp option delete 'wli_popular_posts_settings'
wp option delete 'ppbw_activation_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wli_pp_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wli_pp_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wli_pp_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wli_pp_post_views_count'"
