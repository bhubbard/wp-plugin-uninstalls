#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcpr_post_rating_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpr_post_rating_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpr_post_rating_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpr_post_rating_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpr_post_rating_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpr_post_rating_down'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpr_post_rating_down'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpr_post_rating_down'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpr_post_rating_down'"
