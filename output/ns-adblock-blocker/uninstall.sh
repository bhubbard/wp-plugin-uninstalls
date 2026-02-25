#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abb_reviews_installed_on'
wp option delete 'abb_total_open_count'
wp option delete 'ns-enable-ab'
wp option delete 'ns-redirect-ab'
wp option delete 'ns-redirect-ab-link'
wp option delete 'ns-ab-font-awesome'
wp option delete 'ns-ab-font-awesome-size'
wp option delete 'ns-ab-font-awesome-color'
wp option delete 'ns-ab-page-text'
wp option delete 'ns_ab_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_abb_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_abb_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_abb_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_abb_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_abb_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_abb_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_abb_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_abb_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_abb_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_abb_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_abb_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_abb_reviews_already_did'"
