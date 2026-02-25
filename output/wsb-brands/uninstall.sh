#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_wsb_brands_admin_tab_general_labels'
wp option delete 'wc_wsb_brands_admin_tab_show_in_cart'
wp option delete 'wc_wsb_brands_admin_tab_single_position'
wp option delete 'wc_wsb_brands_admin_tab_loop_position'
wp option delete 'wsb_brands_admin_tab_show_single_product'
wp option delete 'wc_wsb_brands_admin_tab_show_label_single_product'
wp option delete 'wsb_brands_logo_height_single_product'
wp option delete 'wsb_brands_admin_tab_show_product_loop'
wp option delete 'wc_wsb_brands_admin_tab_show_label_loop'
wp option delete 'wsb_brands_logo_height_archive'
wp option delete 'wc_wsb_brands_admin_tab_archive_position'
wp option delete 'wc_wsb_brands_admin_tab_show_logo_archive'
wp option delete 'wc_wsb_brands_admin_tab_show_title_archive'
wp option delete 'wc_wsb_brands_brand_archive_bgcolor'
wp option delete 'wc_wsb_brands_brand_archive_border_thickness'
wp option delete 'wc_wsb_brands_brand_archive_border_color'
wp option delete 'wc_wsb_brands_admin_tab_single_product_tab'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsb_brands'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsb_brands'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsb_brands'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsb_brands'"
