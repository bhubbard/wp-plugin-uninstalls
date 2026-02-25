#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pra_author_review'
wp option delete 'pra_author_review_ver'
wp option delete 'pro_author_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_par_post_review_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_par_post_review_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_par_post_review_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_par_post_review_data'"
