#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtfm_ny_2025'
wp option delete 'rtfm_spare_me'
wp option delete 'rtfm_plugin_activation_time'
wp option delete 'rtfm_remind_me'
wp option delete 'rtfm_rated'
wp option delete 'rtfm_activation_redirect'
wp option delete 'tlp-food-menu-installed-version'
wp option delete 'tlp_fm_m_3_0'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_hide_out_of_stock_items'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmp_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmp_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmp_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmp_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtfm_last_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtfm_last_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtfm_last_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtfm_last_active_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmp_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmp_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmp_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmp_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fmp_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fmp_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fmp_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fmp_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmp_cat_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmp_cat_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmp_cat_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmp_cat_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
