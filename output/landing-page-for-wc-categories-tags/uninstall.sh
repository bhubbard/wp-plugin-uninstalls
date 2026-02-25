#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_landing_page_for_category_tag_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_lp_categories_top_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_lp_categories_top_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_lp_categories_top_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_lp_categories_top_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_lp_categories_bottom_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_lp_categories_bottom_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_lp_categories_bottom_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_lp_categories_bottom_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_lp_tags_top_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_lp_tags_top_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_lp_tags_top_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_lp_tags_top_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_lp_tags_bottom_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_lp_tags_bottom_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_lp_tags_bottom_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_lp_tags_bottom_description'"
