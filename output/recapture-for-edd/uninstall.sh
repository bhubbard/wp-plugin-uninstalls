#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recapture_custom_recapture_host'
wp option delete 'recapture_custom_loader_url'
wp option delete 'recapture_api_key'
wp option delete 'recapture_authenticator_token'
wp option delete 'recapture_discount_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_review_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_review_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_review_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_review_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_review_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_review_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_review_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_review_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_reviews_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_reviews_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_reviews_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_reviews_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recapture_missing_plugin_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recapture_missing_plugin_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recapture_missing_plugin_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recapture_missing_plugin_nag'"
