#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rrpw_reviews_installed_on'
wp option delete 'rrpw_total_open_count'
wp option delete 'ns_code_js_to_add_fb_pixel'
wp option delete 'rrp_enabled_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrpw_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrpw_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrpw_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrpw_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrpw_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrpw_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrpw_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrpw_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrpw_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrpw_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrpw_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrpw_reviews_already_did'"
