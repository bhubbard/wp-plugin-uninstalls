#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsww_reviews_installed_on'
wp option delete 'nsww_total_open_count'
wp option delete 'ns_whislist_label'
wp option delete 'ns_whislist_modal_link'
wp option delete 'ns-wishlist-page'
wp option delete 'ns_wishlist_font_awesome_pre'
wp option delete 'ns_wishlist_font_awesome_post'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nsww_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nsww_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nsww_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nsww_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nsww_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nsww_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nsww_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nsww_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nsww_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nsww_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nsww_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nsww_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_user_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_user_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_user_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_user_wishlist'"
