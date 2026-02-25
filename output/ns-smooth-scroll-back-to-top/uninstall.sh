#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'btta_reviews_installed_on'
wp option delete 'btta_total_open_count'
wp option delete 'ns_btta_font_awsome'
wp option delete 'ns_btta_position'
wp option delete 'ns_btta_background'
wp option delete 'ns_btta_text_color'
wp option delete 'ns_btta_border_color'
wp option delete 'ns_btta_background_hover'
wp option delete 'ns_btta_text_color_hover'
wp option delete 'ns_btta_border_color_hover'
wp option delete 'ns_btta_speed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_btta_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_btta_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_btta_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_btta_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_btta_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_btta_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_btta_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_btta_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_btta_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_btta_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_btta_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_btta_reviews_already_did'"
