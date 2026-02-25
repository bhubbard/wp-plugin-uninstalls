#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xs_review_display'
wp option delete 'xs_review_global'
wp option delete 'active_sitewide_plugins'
wp option delete 'WUR_REVIEW_VERSION'
wp option delete 'gutenkit_do_activation_redirect'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_main_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_main_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_main_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_main_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_reviwer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_reviwer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_reviwer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_reviwer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_reviews_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_reviews_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_reviews_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_reviews_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_review_overview_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_review_overview_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_review_overview_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_review_overview_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_public_review_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_public_review_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_public_review_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_public_review_data'"
