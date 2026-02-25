#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcatalog_reviews_installed_on'
wp option delete 'wcatalog_total_open_count'
wp option delete 'wcf_enabled_plugin'
wp option delete 'wcf_hide_cart_button_single_product'
wp option delete 'wcf_hide_cart_button_all_product'
wp option delete 'wcf_hide_cart_checkout_page'
wp option delete 'wcf_show_more_info_button'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcatalog_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcatalog_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcatalog_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcatalog_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcatalog_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcatalog_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcatalog_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcatalog_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcatalog_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcatalog_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcatalog_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcatalog_reviews_already_did'"
