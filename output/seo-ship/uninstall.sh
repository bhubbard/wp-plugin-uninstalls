#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floating_seo_ship_meta_title'
wp option delete 'floating_seo_ship_meta_description'
wp option delete 'floating_seo_ship_noindex'
wp option delete 'floating_seo_ship_nofollow'
wp option delete 'floating_seo_ship_canonical'
wp option delete 'woocommerce_shop_page_id'
wp option delete '_floating_seo_ship_meta_title'
wp option delete '_floating_seo_ship_meta_description'
wp option delete '_floating_seo_ship_meta_keywords'
wp option delete '_floating_seo_ship_meta_noindex'
wp option delete '_floating_seo_ship_meta_nofollow'
wp option delete '_floating_seo_ship_meta_canonical'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_post_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_post_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_post_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_post_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_post_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_post_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_post_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_post_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_post_meta_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_post_meta_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_post_meta_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_post_meta_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_post_meta_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_post_meta_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_post_meta_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_post_meta_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_post_meta_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_post_meta_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_post_meta_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_post_meta_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_meta_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_meta_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_meta_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_meta_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_meta_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_meta_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_meta_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_meta_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_seo_ship_meta_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_seo_ship_meta_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_seo_ship_meta_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_seo_ship_meta_canonical'"
