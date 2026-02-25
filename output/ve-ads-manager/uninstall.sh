#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 've_ads_page_type'
wp option delete 've_ads_header_val'
wp option delete 've_ads_home_header_val'
wp option delete 've_ads_sidebar_val'
wp option delete 've_ads_footer_val'
wp option delete 've_ads_home_footer_val'
wp option delete 've_ads_content_above_val'
wp option delete 've_ads_content_below_val'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 've_ads_head_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 've_ads_head_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 've_ads_head_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 've_ads_head_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 've_ads_sidebar_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 've_ads_sidebar_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 've_ads_sidebar_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 've_ads_sidebar_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 've_ads_footer_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 've_ads_footer_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 've_ads_footer_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 've_ads_footer_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 've_ads_content_above_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 've_ads_content_above_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 've_ads_content_above_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 've_ads_content_above_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 've_ads_content_below_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 've_ads_content_below_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 've_ads_content_below_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 've_ads_content_below_banner'"
