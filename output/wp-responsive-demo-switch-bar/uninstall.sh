#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xredirect'
wp option delete 'wpt_slug_name'
wp option delete 'fbar_settings'
wp option delete 'page_fbar_settings'
wp option delete 'wpt_page_slug'
wp option delete 'wpt_meta_description'
wp option delete 'wpt_meta_keywords'
wp option delete 'wpt_page_icon'
wp option delete 'wpt_page_title'
wp option delete 'wpt_an_image'
wp option delete 'wpt_responsive'
wp option delete 'wpt_share'
wp option delete 'wpt_purchase'
wp option delete 'wpt_close'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'demo_bar_site_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'demo_bar_site_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'demo_bar_site_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'demo_bar_site_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'demo_bar_download_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'demo_bar_download_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'demo_bar_download_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'demo_bar_download_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'demo_bar_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'demo_bar_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'demo_bar_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'demo_bar_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'demo_bar_type_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'demo_bar_type_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'demo_bar_type_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'demo_bar_type_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_price'"
